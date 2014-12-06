class Jobapp < ActiveRecord::Base
	belongs_to :user
	belongs_to :company
	has_many :todo
	has_many :contact
end

