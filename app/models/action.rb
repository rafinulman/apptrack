class Action < ActiveRecord::Base
	has_many :to_do
	validates :name, :presence => true
	validates :name, :uniqueness => true
end
