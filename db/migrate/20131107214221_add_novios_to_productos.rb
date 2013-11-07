class AddNoviosToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :novios, :boolean
  end
end
