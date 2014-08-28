json.array!(@patrons) do |patron|
  json.extract! patron, :id, :first_name, :last_name
  json.url patron_url(patron, format: :json)
end
