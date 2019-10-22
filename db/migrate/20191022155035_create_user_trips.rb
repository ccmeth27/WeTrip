class CreateUserTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :user_trips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :trip, null: false, foreign_key: true
      t.boolean :attended
      t.boolean :favorite

      t.timestamps
    end
  end
end
