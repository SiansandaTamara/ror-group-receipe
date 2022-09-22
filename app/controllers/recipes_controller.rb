class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show; end

  def new 
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    redirect_to recipes_path, notice: 'You have successfully added a recipe' if @recipe.save
  end

  def destroy
    recipe = Recipe.find(params[:id])
    redirect_to recipes_path, notice: 'You have successfully deleted a recipe.' if recipe.destroy
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
