class MicropostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


def index
      @microposts = micropost.all
  end


    # new
    def new
      @user = current_user
      @micropost = current_user.microposts.new
    end


    # create
    def create
      @user = current_user
      @micropost = current_user.microposts.create!(microposts_params)
      redirect_to user_path(current_user.id)
    end

    #show
    def show
      @user = User.find(params[:user_id])
    end

    # edit
    def edit
      @user = params[:user_id]
      @micropost = params[:id]
      @micropost = current_user.webpages.find(params[:id])
    end

    def update
      @micropost = Micropost.find(params[:id])
      @micropost.update(microposts_params.merge(user: current_user))

        redirect_to user_micropost_path(current_user.id, params[:id])
      end

      # destroy
     def destroy
       @micropost.destroy
       redirect_to user_path(current_user.id)
     end

     def set_post
       @micropost = Micropost.find(params[:id])
     end

     private
     def microposts_params
       params.require(:micropost).permit(:id, :content, :user_id)
     end
  end
