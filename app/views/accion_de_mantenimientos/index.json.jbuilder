json.array!(@accion_de_mantenimientos) do |accion_de_mantenimiento|
  json.extract! accion_de_mantenimiento, :id, :ficha_de_equipo_id, :periodicidad, :descripcion
  json.url accion_de_mantenimiento_url(accion_de_mantenimiento, format: :json)
end
