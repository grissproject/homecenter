class CreateImagenPortadas < ActiveRecord::Migration
  def change
    create_table :imagen_portadas do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
