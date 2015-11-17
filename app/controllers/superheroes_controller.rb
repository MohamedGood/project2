class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
    render :index  
  end


end
