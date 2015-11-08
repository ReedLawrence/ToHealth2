json.array!(@questions) do |question|
  json.extract! question, :id, :questionText
  json.url question_url(question, format: :json)
end
