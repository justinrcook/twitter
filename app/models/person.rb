class Person < ActiveRecord::Base
  belongs_to :user
  attr_accessible :avatar, :last_checked, :name, :username

	# Validations
	validates_presence_of :username
end
