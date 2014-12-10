class Contact < ActiveRecord::Base
	belongs_to :jobapp
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :uniqueness => { :scope => :jobapp_id }
	
end
