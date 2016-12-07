class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by :id => params[:id]
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.new recipe_params

    if @current_user.present?
      recipe.user_id = @current_user.id
    end

    recipe.save

    redirect_to recipe_path( recipe )
  end

  def edit
    @recipe = Recipe.find_by :id => params[:id]
  end

  def update
    recipe = Recipe.find_by :id => params[:id]
    # Find the right recipe using the ID from the URL
    recipe.update recipe_params
    # Update it
    redirect_to recipe_path( recipe )
    # Redirect to the show page for that recipe
  end

  def destroy
    # Find the right recipe
    recipe = Recipe.find_by :id => params[:id]
    recipe.destroy

    redirect_to recipes_path()
  end

  def search
    search_keyword = params[ :search ]

    @recipes = Recipes.where( :title => search_keyword )

  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :ingredients, :method, :image, :category, :cuisine_id)
    end
end
