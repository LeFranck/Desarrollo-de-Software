class ProjectvotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project
  before_action :set_projectvote, only: [:show, :edit, :update, :destroy]

  # GET /projectvotes
  # GET /projectvotes.json
  def index
    @projectvotes = @project.projectvotes.all
  end

  # GET /projectvotes/1
  # GET /projectvotes/1.json
  def show
  end

  # GET /projectvotes/new
  def new
    @projectvote = @project.projectvotes.new
  end

  # GET /projectvotes/1/edit
  def edit
  end

  # POST /projectvotes
  # POST /projectvotes.json
  def create
    @projectvote = @project.projectvotes.new(projectvote_params)
    @projectvote.user = current_user

    respond_to do |format|
      if @projectvote.save
        format.html { redirect_to [@project, @projectvote], notice: 'Projectvote was successfully created.' }
        format.json { render :show, status: :created, location: @projectvote }
      else
        format.html { render :new }
        format.json { render json: @projectvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectvotes/1
  # PATCH/PUT /projectvotes/1.json
  def update
    respond_to do |format|
      if @projectvote.update(projectvote_params)
        format.html { redirect_to project_projectvotes_path(@project), notice: 'Projectvote was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectvote }
      else
        format.html { render :edit }
        format.json { render json: @projectvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectvotes/1
  # DELETE /projectvotes/1.json
  def destroy
    @projectvote.destroy
    respond_to do |format|
      format.html { redirect_to project_projectvotes_path(@project), notice: 'Projectvote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectvote
      @projectvote = @project.projectvotes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectvote_params
      params.require(:projectvote).permit(:rating, :user_id, :project_id)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end
end
