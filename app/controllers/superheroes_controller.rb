class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
    render :index
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

end
