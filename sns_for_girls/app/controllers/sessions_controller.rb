class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end
  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user == User.find_by(password: params[:session][:password])
  		log_in(user)
      redirect_to :controller => 'home', :action => 'index',
      :user_id => user.id
  	else
  		redirect_to new_user_path
  	end
  end
  
  def destroy
    log_out
    params[:user_id] = nil
    redirect_to '/'
  end

end
