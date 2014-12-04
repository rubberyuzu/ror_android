class UsersController < ApplicationController
	def new
		@new_user = User.new
	end
	def create
		salt = BCrypt::Engine.generate_salt
		encrypted_password = BCrypt::Engine.hash_secret(params[:user][:password], salt)

		User.create(name: params[:user][:name],
								email: params[:user][:email],
								password: encrypted_password)
	end
end
