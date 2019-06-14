class RemovePriceStringFromLawyersTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :lawyers, :price_hour, :string
  end
end
