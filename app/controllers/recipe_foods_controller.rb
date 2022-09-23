class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @foods = Food.all
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.build(recipe_food_params)
    redirect_to recipe_path(@recipe.id) if @recipe_food.save
  end

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end