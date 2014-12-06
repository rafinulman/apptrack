# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed companies
	companies = Company.create([{name: 'Amazon'},{name: 'Deloitte'},{name: 'McKinsey'},{name: 'Disney'},{name: 'Apple'},{name: 'Goldman Sachs'},{name: 'J. P. Morgan'},{name: 'Groupon'}])

# Seed actions
	actions = Action.create([{name: 'Follow up on lead'},{name: 'Send thank you note'},{name: 'Let them know what happened'}])

# Seed job application
	jobapps = Jobapp.create([{ position: 'Product manager', user_id: 1, company_id: 1, interview_on: Date.parse('2015-01-01'),note: ''},{ position: 'Associate', user_id: 1, company_id: 2, interview_on: Date.parse('2015-01-01'),note: ''},{ position: 'Associate', user_id: 2, company_id: 2, interview_on: Date.parse('2015-01-01'),note: ''},{ position: 'BT Associate', user_id: 2, company_id: 3, interview_on: Date.parse('2015-01-01'),note: ''}])

# Seed contact
	contacts = Contact.create([{first_name: 'Rafi', last_name: 'Nulman', email: 'rafi@example.com', phone:'1234567890', linkedin_url: 'https://www.linkedin.com/profile/view?id=30971244', jobapp_id: 1, notes: 'Rafi came here from 1985 to say this: hello!'},{first_name: 'John', last_name: 'Doe', email: 'john@example.com', phone:'1234567890', linkedin_url: 'https://www.linkedin.com/profile/view?id=2237502', jobapp_id: 2, notes: 'Must be weird being actually named John Doe'},{first_name: 'Rafi', last_name: 'Nulman', email: 'rafi@example.com', phone:'1234567890', linkedin_url: 'https://www.linkedin.com/profile/view?id=30971244', jobapp_id: 3, notes: 'Never met him'}])

# Seed to-do
	todos = Todo.create([{jobapp_id: 1, due_at: Date.parse('2015-01-03'), action_id: 1, contact_id: 1},{jobapp_id: 2, due_at: Date.parse('2015-01-03'), action_id: 1, contact_id: 2}])

# Create two users
	users = User.create([{email: 'rafi@example.com', encrypted_password: '12345678', username:'rafi_tester'},{email: 'john@example.com', encrypted_password: '12345678', username:'john_tester'}])
