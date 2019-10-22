class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :location
      t.string :lodging
      t.string :meals
      t.string :transportation
      t.decimal :cost
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
