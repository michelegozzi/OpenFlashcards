class User < ApplicationRecord

	before_save { email.downcase! }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	

	validates :name, presence: true, length: { maximum: 100 }
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

	has_secure_password
	#validates :password, presence: true, length: { minimum: 6 }
	
	#attr_accessor :email, :name, :password, :password_confirmation
	
	has_many :api_keys, dependent: :destroy
end
