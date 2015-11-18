class CommentsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


def index
      @comments = micropost.all
  end


    # new
    def new
      @user = current_user
      @comment = current_user.microposts.new
    end


    # create
    def create
      @user = current_user
      @comment = current_user.microposts.create!(microposts_params)
      redirect_to user_path(current_user.id)
    end

    #show
    def show
      @comment = Comment.find(params[:user_id])
    end

    # edit
    def edit
      @comment = params[:comment_id]
      @comment = params[:id]
      @comment = current_user.comments.find(params[:id])
    end

    def update
      @scomment = sup.find(params[:id])
      @comment.update(comments_params.merge(user: current_user))

        redirect_to user_comment_path(current_user.id, params[:id])
      end

      # destroy
     def destroy
       @comment.destroy
       redirect_to user_path(current_user.id)
     end

     def set_post
       @comment = Comment.find(params[:id])
     end

     private
     def comments_params
       params.require(:comment).permit(:id, :content, :user_id)
     end
  end
