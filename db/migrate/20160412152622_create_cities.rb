class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
    	t.string "city_name"
    	t.string "zip"
    	t.string "jobs"
    	t.string "population"
    	t.string "top_employer"
    end
  end
end
