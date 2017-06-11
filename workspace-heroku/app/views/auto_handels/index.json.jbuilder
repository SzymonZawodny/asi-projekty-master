json.array!(@auto_handels) do |auto_handel|
  json.extract! auto_handel, :id, :marka, :model, :cena
  json.url auto_handel_url(auto_handel, format: :json)
end
