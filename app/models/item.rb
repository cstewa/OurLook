class Item < ActiveRecord::Base
  attr_accessible :description, :name, :price, :url, :user_id, :count

  has_many :reviews
  belongs_to :user

  def is_available?
  	self.count > 0 
  end 

end
