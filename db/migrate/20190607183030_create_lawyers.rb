class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.string :full_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :image
      t.string :location
      t.string :price_hour
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
