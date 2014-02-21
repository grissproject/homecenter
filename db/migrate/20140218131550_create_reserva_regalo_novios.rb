class CreateReservaRegaloNovios < ActiveRecord::Migration
  def change
    create_table :reserva_regalo_novios do |t|
      t.float :monto
      t.boolean :activo
      t.text :mensaje
      t.references :revista_novio
      t.references :producto
      t.references :user

      t.timestamps
    end
    add_index :reserva_regalo_novios, :revista_novio_id
    add_index :reserva_regalo_novios, :producto_id
    add_index :reserva_regalo_novios, :user_id
  end
end
