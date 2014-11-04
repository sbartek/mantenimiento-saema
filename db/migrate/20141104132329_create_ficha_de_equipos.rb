class CreateFichaDeEquipos < ActiveRecord::Migration
  def change
    create_table :ficha_de_equipos do |t|
      t.string :nombre
      t.text :descripcion_tecnica
      t.string :ref_modelo
      t.integer :fabricante_id
      t.integer :proveedor_id
      t.integer :marca_id

      t.timestamps
    end
  end
end
