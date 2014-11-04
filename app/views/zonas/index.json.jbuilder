json.array!(@zonas) do |zona|
  json.extract! zona, :id, :nombre, :area_pt
  json.url zona_url(zona, format: :json)
end
