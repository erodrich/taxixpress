json.array!(@payment_methods) do |payment_method|
  json.extract! payment_method, :id, :tx_descripcion
  json.url payment_method_url(payment_method, format: :json)
end
