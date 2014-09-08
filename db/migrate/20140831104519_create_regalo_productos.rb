class CreateRegaloProductos < ActiveRecord::Migration
  def change
    create_table :regalo_productos do |t|
      t.boolean :activo
      t.references :producto
      t.text :mensaje
      t.references :user

      t.timestamps
    end
    add_index :regalo_productos, :producto_id
    add_index :regalo_productos, :user_id
  end
end
