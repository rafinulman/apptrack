class Jobapp < ActiveRecord::Base
	belongs_to :user
	belongs_to :company
	has_many :todo
	has_many :contact

	def description
		return self.position + " at " + self.company.name
	end
	validates :company_id, :presence => true
	validates :position, :presence => true
	validates :interview_on, :presence => true
end

