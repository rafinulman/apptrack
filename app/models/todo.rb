class Todo < ActiveRecord::Base
	belongs_to :jobapp
	belongs_to :action
	belongs_to :contact
end
