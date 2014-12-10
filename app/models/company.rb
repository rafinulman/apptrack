class Company < ActiveRecord::Base
	has_many :jobapp
	validates :name, :presence => true
	validates :name, uniqueness: {case_sensitive: false}
end