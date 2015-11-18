class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
    render :index
  end

  def show
    @superhero = Superhero.find(params[:id])
    @comment = @superhero.comments.new
  end


  def create
    @superhero = Superhero.all
  end

  def edit
    @superhero = Superhero.all
  end

  def update
    @superhero = Superhero.all
  end

  def destroy
    @superhero = Superhero.all
  end

end
