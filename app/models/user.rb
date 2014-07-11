class User < ActiveRecord::Base
	validates :password, length: {minimum: 6}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
	validates_presence_of :name
	validates_length_of :name, :maximum => 50
	before_save { self.email = email.downcase }
 	has_secure_password
end
