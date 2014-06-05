json.array!(@list_associations) do |list_association|
  json.extract! list_association, :id, :first_list_id, :second_list_id
  json.url list_association_url(list_association, format: :json)
end
