class UsersController < ApplicationController
	def new
		@new_user = User.new
	end
	def create
		User.create(name: params[:user][:name],
								email: params[:user][:email],
								password: params[:user][:password])
	end
	def index
		@users_list = User.all
	end
end
