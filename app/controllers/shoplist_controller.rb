class ShoplistController < ApplicationController
  def show
    @recipe = Recipe.find(params[:recipe_id])
    @total_items = 0
    @total_price = 0
    @recipe.recipe_foods.includes(:food).each do |item|
      @total_items += item.quantity
      @total_price += item.quantity * item.food.price
    end
  end
end
