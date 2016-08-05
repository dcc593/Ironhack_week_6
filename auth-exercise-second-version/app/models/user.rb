class User < ActiveRecord::Base
	has_secure_password 
	# ^^ makes sure that passord and password confirmation 
	#is the same when new user is added
	# also lets you use authenticate method
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
end
