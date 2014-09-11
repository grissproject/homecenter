class CreatePortadaRevista < ActiveRecord::Migration
  def change
    create_table :portada_revista do |t|
      t.string :titulo
      t.text :descripcion
      t.boolean :activo

      t.timestamps
    end
  end
end
