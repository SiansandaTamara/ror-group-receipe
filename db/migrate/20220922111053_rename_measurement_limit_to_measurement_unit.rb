class RenameMeasurementLimitToMeasurementUnit < ActiveRecord::Migration[7.0]
  def change
   rename_column :foods, :measurement_limit, :measurement_unit
  end
end
