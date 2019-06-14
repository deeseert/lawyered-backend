class AddPriceIntegerFromLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :price_hour, :integer
  end
end
