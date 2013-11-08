class CreateProductosAndRevistaNoviosTable < ActiveRecord::Migration
  def up
    create_table :productos_revista_novios, :id => false do |t|
      t.integer :producto_id
      t.integer :revista_novio_id
    end
  end

  def down
    drop_table :productos_revista_novios
  end
end
