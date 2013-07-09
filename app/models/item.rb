class Item < ActiveRecord::Base
  attr_accessible :description, :name, :price, :url, :user_id, :count

  has_many :reviews
  has_and_belongs_to_many :users

  def is_available?
  	self.count > 0 
  end 

end
