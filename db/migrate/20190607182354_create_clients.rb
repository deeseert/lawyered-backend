class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :username
      t.string :email
      t.string :password
      t.string :image

      t.timestamps
    end
  end
end
