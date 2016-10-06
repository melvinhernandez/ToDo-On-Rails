class CreateTodoTasks < ActiveRecord::Migration
  def change
    create_table :todo_tasks do |t|
      t.string :content
      t.boolean :completed
      t.references :todo_group, index: true

      t.timestamps
    end
  end
end
