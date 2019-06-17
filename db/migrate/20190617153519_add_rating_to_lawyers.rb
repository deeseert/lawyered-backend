class AddRatingToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :rating, :float
  end
end
