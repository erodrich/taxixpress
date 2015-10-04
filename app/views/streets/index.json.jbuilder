json.array!(@streets) do |street|
  json.extract! street, :id, :no_via
  json.url street_url(street, format: :json)
end
