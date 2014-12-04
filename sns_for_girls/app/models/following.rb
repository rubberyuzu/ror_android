class Following < ActiveRecord::Base
	attr_accessible :user_id, :follower_id
	belongs_to :user
end
