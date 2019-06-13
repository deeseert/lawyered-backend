class AddFieldToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :field, :string
  end
end
