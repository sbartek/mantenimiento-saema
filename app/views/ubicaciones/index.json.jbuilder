json.array!(@ubicaciones) do |ubicacion|
  json.extract! ubicacion, :id, :nombre
  json.url ubicacion_url(ubicacion, format: :json)
end
