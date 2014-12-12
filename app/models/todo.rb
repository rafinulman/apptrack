class Todo < ActiveRecord::Base
	belongs_to :jobapp
	belongs_to :action
	belongs_to :contact

	validates :due_at, :presence => true
	validates :action_id, :presence => true
end
