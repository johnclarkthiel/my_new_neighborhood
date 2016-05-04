class CitiesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	helper_method :city_search
	respond_to :json, :html, :js
	before_action :authenticate_user!, only: :secure


	def index
		p "INDEX WORKING"

		city = City.all
		sort_city = city.sort_by do |c|
			c[:city_name]
		end

		@cities = sort_city

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

	def zillow_search
		p params[:state]

		@zillow = HTTParty.get("http://www.zillow.com/webservice/GetRateSummary.htm?zws-id=X1-ZWz1f7n3jp7abv_9od0r&state="+params[:state]+"&output=json").parsed_response
		p @zillow["response"]
		render json: @zillow
	end



	def city_params
		params.require(:city).permity(:city_name)
	end

end

    	
    