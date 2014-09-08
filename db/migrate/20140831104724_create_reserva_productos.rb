class CreateReservaProductos < ActiveRecord::Migration
  def change
    create_table :reserva_productos do |t|
      t.boolean :activo
      t.references :producto
      t.text :mensaje
      t.references :user

      t.timestamps
    end
    add_index :reserva_productos, :producto_id
    add_index :reserva_productos, :user_id
  end
end
