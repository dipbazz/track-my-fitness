class AddUserToMeasurement < ActiveRecord::Migration[6.1]
  def change
    add_reference :measurements, :user, null: false, foreign_key: true
  end
end
