class CreatePanfletosAndProductosTable < ActiveRecord::Migration
  def up
    create_table :panfletos_productos, :id => false do |t|
      t.integer :panfleto_id
      t.integer :producto_id
    end
  end

  def down
    drop_table :panfletos_productos
  end
end
