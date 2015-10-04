json.array!(@drivers) do |driver|
  json.extract! driver, :id, :no_driver, :no_correo, :nu_telefono, :password_digest
  json.url driver_url(driver, format: :json)
end
