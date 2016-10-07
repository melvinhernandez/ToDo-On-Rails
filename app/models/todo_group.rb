class TodoGroup < ActiveRecord::Base
  has_many :todo_tasks

  validates :title, :description, :presence => true
  validates :title, :length => { :maximum => 55}
  validates :description, :length => { :maximum => 140}
  validates :title, :uniqueness => true
end
