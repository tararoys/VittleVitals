class RecipesController < ApplicationController
  def index
    if params[:search]
      @recipes = Recipe.search(params[:search], params[:search_type])
    else
      @recipes =  Recipe.all
    end
  end

  # work on where to create recipe objects

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients

    # @nutrition_info = @recipe.nutrition_calc

  end


end
