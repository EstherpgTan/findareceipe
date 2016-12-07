class CuisinesController < ApplicationController
  def index
    @cuisines = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find_by :id => params[:id]
  end

  def new
    @cuisine = Cuisine.new
  end

  def create
    cuisine = Cuisine.new cuisine_params
    cuisine.save

    redirect_to cuisine_path( cuisine.id )
  end

  def edit
    @cuisine = Cuisine.find_by :id => params[:id]
  end

  def update
    cuisine = Cuisine.find_by :id => params[:id]
    cuisine.update cuisine_params

    redirect_to cuisine_path( cuisine.id )
  end

  def destroy
    cuisine = Cuisine.find_by :id => params[:id]
    cuisine.destroy

    redirect_to cuisines_path()
  end

  private
    def cuisine_params
      params.require(:cuisine).permit(:style)
    end
end
