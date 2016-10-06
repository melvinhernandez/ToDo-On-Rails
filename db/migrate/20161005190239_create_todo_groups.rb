class CreateTodoGroups < ActiveRecord::Migration
  def change
    create_table :todo_groups do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
