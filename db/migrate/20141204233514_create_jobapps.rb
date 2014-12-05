class CreateJobapps < ActiveRecord::Migration
  def change
    create_table :jobapps do |t|
      t.string :position
      t.integer :user_id
      t.integer :company_id
      t.date :interview_on
      t.text :note

      t.timestamps

    end
  end
end
