json.array!(@games) do |game|
  json.extract! game, :id, :name, :system_id
  json.url game_url(game, format: :json)
end
