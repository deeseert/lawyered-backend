class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.string :day
      t.string :time
      t.string :duration
      t.integer :lawyer_id

      t.timestamps
    end
  end
end
