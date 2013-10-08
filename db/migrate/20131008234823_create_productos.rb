class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :codigo
      t.integer :stock
      t.references :categoria

      t.timestamps
    end
    add_index :productos, :categoria_id
  end
end
