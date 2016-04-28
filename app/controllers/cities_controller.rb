class CitiesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	helper_method :city_search


	def index
		p "INDEX WORKING"



	end

	def city_search
		identifier = params[:city_name]
		p "THESE ARE THE PARAMS", identifier

		@city = City.find_by(:city_name => identifier)

		p "HERE'S THE CITY ", @city 

	end



	def city_params
		params.require(:city).permity(:city_name)
	end

end

    	
    