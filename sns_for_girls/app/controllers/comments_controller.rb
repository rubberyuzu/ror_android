class CommentsController < ApplicationController
	def new
		@user_id = params[:user_id]
		@comment = Comment.new(:user_id => @user_id)
	end

	def create
		Comment.create(:user_id=>params[:user_id],
									 :title =>params[:comment][:title],
									 :content =>params[:comment][:content])
		user = User.find(params[:user_id])
		redirect_to :controller => 'home', :action => 'index',
     :user_id => user.id
	end

	def index
		user = User.find(params[:user_id])
		@comments_list = user.comments
	end
end
