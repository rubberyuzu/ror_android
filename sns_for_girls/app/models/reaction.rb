class Reaction < ActiveRecord::Base
	attr_accessible :content
	belongs_to :user
	belongs_to :comment
	has_many :votes, :as => :voteable
end
