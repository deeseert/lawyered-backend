class AddBookedToAvailabilities < ActiveRecord::Migration[5.2]
  def change
    add_column :availabilities, :booked, :boolean
  end
end
