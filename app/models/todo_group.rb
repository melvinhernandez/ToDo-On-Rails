class TodoGroup < ActiveRecord::Base
  has_many :todo_tasks
end
