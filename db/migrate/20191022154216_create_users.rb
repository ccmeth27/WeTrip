class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.date :dob
      t.string :profile_img

      t.timestamps
    end
  end
end
