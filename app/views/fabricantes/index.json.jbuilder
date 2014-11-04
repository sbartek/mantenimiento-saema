json.array!(@fabricantes) do |fabricante|
  json.extract! fabricante, :id, :nombre
  json.url fabricante_url(fabricante, format: :json)
end
