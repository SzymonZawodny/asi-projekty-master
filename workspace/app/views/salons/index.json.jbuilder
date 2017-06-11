json.array!(@salons) do |salon|
  json.extract! salon, :id, :nazwa, :rocznik, :przebieg, :cena
  json.url salon_url(salon, format: :json)
end
