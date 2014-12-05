class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :jobapp_id
      t.date :due_at
      t.integer :action_id
      t.integer :contact_id

      t.timestamps

    end
  end
end
