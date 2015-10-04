json.array!(@services) do |service|
  json.extract! service, :id, :co_confirmacion, :fe_fecha, :fe_hora, :nu_telefono, :ss_costo_estimado, :ss_costo_final
  json.url service_url(service, format: :json)
end
