class Comment < ActiveRecord::Base
	attr_accessible :user_id, :votes, :content, :title
	belongs_to :user
	has_many :votes, :as => :voteable
end
