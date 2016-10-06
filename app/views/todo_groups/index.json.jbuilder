json.array!(@todo_groups) do |todo_group|
  json.extract! todo_group, :id, :title, :description
  json.url todo_group_url(todo_group, format: :json)
end
