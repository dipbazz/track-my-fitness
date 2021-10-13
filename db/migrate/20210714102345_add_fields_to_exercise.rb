class AddFieldsToExercise < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :unit, :string
    add_column :exercises, :target, :integer
    add_column :exercises, :icon, :string
  end
end
