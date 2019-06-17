class ChangeAppointmentColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :lawyer_id, :availability_id
  end
end
