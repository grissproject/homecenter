class CreateProductosAndRevistaMensualsTable < ActiveRecord::Migration
  def up
    create_table :productos_revista_mensuals, :id => false do |t|
      t.integer :producto_id
      t.integer :revista_mensual_id
    end
  end

  def down
    drop_table :productos_revista_mensuals
  end
end
