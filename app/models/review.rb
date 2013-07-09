class Review < ActiveRecord::Base
  attr_accessible :item_id, :text, :user_id

  belongs_to :user
  belongs_to :item 
end
