json.array!(@equipos) do |equipo|
  json.extract! equipo, :id, :ficha_de_equipo_id, :ubicacion_id, :unidades
  json.url equipo_url(equipo, format: :json)
end
