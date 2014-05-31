json.array!(@levels) do |level|
  json.extract! level, :id, :name, :level, :description, :power_id
  json.url level_url(level, format: :json)
end
