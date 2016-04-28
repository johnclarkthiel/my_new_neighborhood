class CitiesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	helper_method :city_search
	respond_to :json, :html, :js


	def index
		p "INDEX WORKING"

		@cities = City.all

	end

	def show

		@city = City.find_by(:city_name => identifier)

	end

	def city_search
		identifier = params[:city_name]
		p "THESE ARE THE PARAMS", identifier

		@city = City.find_by(:city_name => identifier)

		p "HERE'S THE CITY ", @city 

		render json: @city

		# respond_to do |format|
		# 	format.js {render nothing: true}
		# 	format.html {render nothing: true}
		# 	format.json {render :json => @city.to_json}
		# end


	end



	def city_params
		params.require(:city).permity(:city_name)
	end

end

    	
    