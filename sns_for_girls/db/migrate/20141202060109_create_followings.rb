class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|
    	t.belongs_to :user
    	t.integer :follower_id 
    	# follower_id ... the id of the follower
    	# user ... the person who's followed
      t.timestamps
    end
  end
end
