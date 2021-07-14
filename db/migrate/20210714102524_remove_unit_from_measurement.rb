class RemoveUnitFromMeasurement < ActiveRecord::Migration[6.1]
  def change
    remove_column :measurements, :unit, :string
  end
end
