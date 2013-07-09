class User < ActiveRecord::Base
	has_secure_password

  attr_accessible :email, :name, :password, :password_confirmation

	has_many :items
	has_many :reviews  

  validates :email, :uniqueness => true
end
