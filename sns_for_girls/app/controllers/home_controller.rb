class HomeController < ApplicationController
	def index
		if params[:user_id]
			id = params[:user_id]
			@user = User.find(id)
		end
	end
end
