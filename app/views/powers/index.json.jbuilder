json.array!(@powers) do |power|
  json.extract! power, :id, :name, :group_id, :game_id
  json.url power_url(power, format: :json)
end
