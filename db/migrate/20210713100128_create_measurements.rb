class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.references :exercise, null: false, foreign_key: true
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
