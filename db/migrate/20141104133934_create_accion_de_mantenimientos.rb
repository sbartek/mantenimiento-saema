class CreateAccionDeMantenimientos < ActiveRecord::Migration
  def change
    create_table :accion_de_mantenimientos do |t|
      t.integer :ficha_de_equipo_id
      t.string :periodicidad
      t.text :descripcion

      t.timestamps
    end
  end
end
