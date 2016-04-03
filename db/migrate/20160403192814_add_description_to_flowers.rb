class AddDescriptionToFlowers < ActiveRecord::Migration
  def change
  	add_column :flowers, :description, :string
  end
end
