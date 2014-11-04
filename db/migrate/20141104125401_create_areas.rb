class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :nombre
      t.integer :ubicacion_id

      t.timestamps
    end
  end
end
