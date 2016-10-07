class TodoTask < ActiveRecord::Base
  belongs_to :todo_group

  validates :content, :presence => true
  validates :content, :length => { :maximum => 140}
end
