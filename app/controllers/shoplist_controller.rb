class ShoplistController < ApplicationController
    def show
        @user = current_user
        @recipes = @user.recipes
        @recipe_food = []
        @recipes.includes([:recipe_foods]).each do |recipe|
          recipe.recipe_foods.each do |recipe_food|
            @recipe_food.push(recipe_food)
          end
        end
        @total_items = 0
        @total_price = 0
        @recipes.each do |items|
          items.recipe_foods.includes(:food).each do |item|
            @total_items += item.quantity
            @total_price += item.quantity * item.food.price
          end
        end
      end
end
