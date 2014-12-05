class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.text :email
      t.string :phone
      t.string :linkedin_url
      t.integer :jobapp_id
      t.text :note

      t.timestamps

    end
  end
end
