class CreateCompraRegaloNovios < ActiveRecord::Migration
  def change
    create_table :compra_regalo_novios do |t|
      t.references :revista_novio
      t.references :producto
      t.float :monto
      t.references :user

      t.timestamps
    end
    add_index :compra_regalo_novios, :revista_novio_id
    add_index :compra_regalo_novios, :producto_id
    add_index :compra_regalo_novios, :user_id
  end
end
