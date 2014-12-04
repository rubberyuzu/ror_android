class Vote < ActiveRecord::Base
	attr_accessible :voteable_type, :voteable_id
	belongs_to :voteable, polymorphic: true
end
