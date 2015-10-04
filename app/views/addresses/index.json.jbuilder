json.array!(@addresses) do |address|
  json.extract! address, :id, :nu_casa, :tx_edif_dpto
  json.url address_url(address, format: :json)
end
