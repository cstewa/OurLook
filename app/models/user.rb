class User < ActiveRecord::Base
	has_secure_password

  attr_accessible :email, :name, :password, :password_confirmation

	has_and_belongs_to_many :items
	has_many :reviews  

  validates :email, :uniqueness => true
end
