class User < ActiveRecord::Base
	has_many :tasks
	has_many :answers
	has_secure_password
	validates :userName, presence: true
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :password, presence: true
end
