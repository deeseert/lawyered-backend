class AddDescriptionToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :description, :text
  end
end
