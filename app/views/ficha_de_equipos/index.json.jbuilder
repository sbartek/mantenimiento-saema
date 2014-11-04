json.array!(@ficha_de_equipos) do |ficha_de_equipo|
  json.extract! ficha_de_equipo, :id, :nombre, :descripcion_tecnica, :ref_modelo, :fabricante_id, :proveedor_id, :marca_id
  json.url ficha_de_equipo_url(ficha_de_equipo, format: :json)
end
