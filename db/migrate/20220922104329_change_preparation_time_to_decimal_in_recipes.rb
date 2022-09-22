class ChangePreparationTimeToDecimalInRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :preparation_time, :decimal, precision: 2, scale: 2
  end
end
