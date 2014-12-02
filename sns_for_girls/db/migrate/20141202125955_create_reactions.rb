class CreateReactions < ActiveRecord::Migration
  def change
    create_table :reactions do |t|
    	t.string :content
    	t.belongs_to :user
    	t.belongs_to :comment
    	
      t.timestamps
    end
  end
end
