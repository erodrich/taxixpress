json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :no_marca, :no_modelo, :nu_placa
  json.url vehicle_url(vehicle, format: :json)
end
