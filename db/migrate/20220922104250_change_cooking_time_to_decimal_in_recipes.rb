class ChangeCookingTimeToDecimalInRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :cooking_time, :decimal, :precision => 2, :scale => 2
  end
end
