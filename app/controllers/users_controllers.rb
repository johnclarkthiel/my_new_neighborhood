class UsersController < ApplicationController
	skip_before_filter :verify_authenticity_token
	respond_to :json, :html, :js
	before_action :authenticate_user!, only: :secure


	def index
		p "INDEX WORKING"

	end


end