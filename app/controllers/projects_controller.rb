class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :search]
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :validate_owner, only: [:edit, :update, :destroy]


  # GET /projects
  # GET /projects.json
  def index
    if params[:user_id]
      @projects = Project.joins("LEFT JOIN owners ON owners.project_id = projects.id").where(:owners => {user_id: params[:user_id]})
    else
      respond_to do |format|
        format.html {
          @projects = Project.all
        }
        format.js {
          if (params[:category] == "0")
            @projects = Project.all
          else
            @cat = params[:category]
            @projects = Project.where(:category_id => params[:category].to_i)
          end
        }
      end
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project_photos = ProjectPhoto.where(project_id: params[:id])
  end


  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.owners.new(user: current_user)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    tag_results = Project.tag_search(params[:search])
    text_results = Project.search(params[:search])
    @projects = tag_results + text_results
  end

  def ranking
    @projects = Project.all.sort_by{|project| -project.average_rating}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:description, :video_link, :title, :content, :category_id, :avatar, project_photos_attributes: [:id, :photo, :description, :_destroy])
    end

    def validate_owner
      if !(@project.owners.exists?(:user_id => current_user.id))
        if params[:user_id] && params[:id]
          redirect_to user_project_path(User.find(params[:user_id]), Project.find(params[:id])), notice: 'Access No Permitido'
        elsif params[:id]
          redirect_to project_path(Project.find(params[:id])), notice: 'Access No Permitido'
        else
          redirect_to projects_path, notice: 'Access No Permitido'
        end
      else
        true
      end
    end
end
