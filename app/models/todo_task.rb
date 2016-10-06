class TodoTask < ActiveRecord::Base
  belongs_to :todo_group
end
