class CreateZonas < ActiveRecord::Migration
  def change
    create_table :zonas do |t|
      t.integer :nombre
      t.integer :area_pt

      t.timestamps
    end
  end
end
