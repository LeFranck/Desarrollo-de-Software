class CommentvotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment
  before_action :set_commentvote, only: [:show, :edit, :update, :destroy]

  # GET /commentvotes
  # GET /commentvotes.json
  def index
    @commentvotes = @comment.commentvotes.all
  end

  # GET /commentvotes/1
  # GET /commentvotes/1.json
  def show
  end

  # GET /commentvotes/new
  def new
    @commentvote = @comment.commentvotes.new
  end

  # GET /commentvotes/1/edit
  def edit
  end

  # POST /commentvotes
  # POST /commentvotes.json
  def create
    @commentvote = @comment.commentvotes.new(commentvote_params)
    @commentvote.user = current_user

    respond_to do |format|
      if @commentvote.save
        format.html { redirect_to [@comment, @commentvote], notice: 'Commentvote was successfully created.' }
        format.json { render :show, status: :created, location: @commentvote }
      else
        format.html { render :new }
        format.json { render json: @commentvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentvotes/1
  # PATCH/PUT /commentvotes/1.json
  def update
    respond_to do |format|
      if @commentvote.update(commentvote_params)
        format.html { redirect_to [@comment, @commentvote], notice: 'Commentvote was successfully updated.' }
        format.json { render :show, status: :ok, location: @commentvote }
      else
        format.html { render :edit }
        format.json { render json: @commentvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentvotes/1
  # DELETE /commentvotes/1.json
  def destroy
    @commentvote.destroy
    respond_to do |format|
      format.html { redirect_to comment_commentvotes_path(@comment), notice: 'Commentvote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commentvote
      @commentvote = @comment.commentvotes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commentvote_params
      params.require(:commentvote).permit(:type, :user_id, :comment_id)
    end

    def set_comment
      @comment = Comment.find(params[:comment_id])
    end

end
