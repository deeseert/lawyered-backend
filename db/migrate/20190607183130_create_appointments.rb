class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :lawyer_id
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
