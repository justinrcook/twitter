class Person < ActiveRecord::Base
  belongs_to :user
  attr_accessible :avatar, :last_checked, :name, :username, :description, :location

	# Validations
	validates_presence_of :username

	# Callbacks
	before_create :get_profile_information
	#after_create :update_timeline

	# Grab the Person's profile information from Twitter
	def get_profile_information
		user = Twitter.user(self.username)
		self.name					= user.name
		self.avatar				= user.profile_image_url
		self.description	= user.description
		self.location			= user.location
	end

end
