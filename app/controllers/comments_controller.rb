class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    @comments = Comment.all
  end


  # new
  def new
    @superhero = Superhero.find(params[:superhero_id])
    @comment = Comment.new
  end


  # create
  def create
  @superhero = Superhero.find(params[:superhero_id])
  @comment = @superhero.comments.create!(comments_params)
  redirect_to superhero_path(@superhero)
  

  end
  #indentation - dt

  #show
  def show

  end

  # edit
  def edit

  end

  def update



  end

  # destroy
  def destroy
    @comment.destroy

  end



  private
  def comments_params
    params.require(:comment).permit(:body, :author)


  end

  def set_comment
    @comment = Comment.find(params[:id])

  end
end
