json.array!(@list_values) do |list_value|
  json.extract! list_value, :id, :text, :list_id, :system_id
  json.url list_value_url(list_value, format: :json)
end
