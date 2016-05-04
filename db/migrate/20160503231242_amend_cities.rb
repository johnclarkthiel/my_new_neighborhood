class AmendCities < ActiveRecord::Migration
  def change
  	add_column :cities, :state, :string, :null => true
  end
end
