class RemoveIconFromExercise < ActiveRecord::Migration[6.1]
  def change
    remove_column :exercises, :icon, :string
  end
end
