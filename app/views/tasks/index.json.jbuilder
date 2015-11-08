json.array!(@tasks) do |task|
  json.extract! task, :id, :user_id, :name, :course, :dueDate, :estTime, :description, :priority
  json.url task_url(task, format: :json)
end
