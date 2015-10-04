json.array!(@tipo_vehicles) do |tipo_vehicle|
  json.extract! tipo_vehicle, :id, :no_tipo, :nu_pasajeros
  json.url tipo_vehicle_url(tipo_vehicle, format: :json)
end
