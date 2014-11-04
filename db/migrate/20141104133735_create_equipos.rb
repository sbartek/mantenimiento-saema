class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.integer :ficha_de_equipo_id
      t.integer :ubicacion_id
      t.integer :unidades

      t.timestamps
    end
  end
end
