class WebpagesController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


def index
      @webpages = webpage.all
  end


    # new
    def new
      @user = current_user
      @webpage = current_user.webpages.new
    end


    # create
    def create
      @user = current_user
      @webpage = current_user.webpages.create!(webpages_params)
      redirect_to user_path(current_user.id)
    end

    #show
    def show
      @user = User.find(params[:user_id])
    end

    # edit
    def edit
      @user = params[:user_id]
      @webpage_id = params[:id]
      @webpage = current_user.webpages.find(params[:id])
    end

    def update
      @webpage = Webpage.find(params[:id])
      @webpage.update(webpages_params.merge(user: current_user))

        redirect_to user_webpage_path(current_user.id, params[:id])
      end

      # destroy
     def destroy
       @webpage.destroy
       redirect_to user_path(current_user.id)
     end

     def set_post
       @webpage = Webpage.find(params[:id])
     end

     private
     def webpages_params
       params.require(:webpage).permit(:title, :photo_url, :body_text, :background_color)
     end
  end
