class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    #puts the ingredients into the recipe according to the form
    10.times {@recipe.ingredients.build}
  end

  def create
    @recipe=Recipe.new(recipe_params)
    if @recipe.save
      @recipe=Recipe.create(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def recipe_params
    params.require(:recipe).permit(:title,
    ingredients_attributes:[
      :name,
      :quantity
      ])
  end

end
