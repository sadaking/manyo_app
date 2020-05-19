class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task_name, null: false
      t.string :task_details, null: false
      t.string :deadline, null: false
      t.string :status, null: false
      t.string :priority, null: false
      t.string :author, null: false
    end
  end
end
