class AlterCompletedTypeInTodoTasks < ActiveRecord::Migration
  def self.up
    change_column :todo_tasks, :completed, :boolean
  end

  def self.down
    change_column :todo_tasks, :completed, :datetime
  end
end
