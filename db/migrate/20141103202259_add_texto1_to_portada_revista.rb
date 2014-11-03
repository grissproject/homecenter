class AddTexto1ToPortadaRevista < ActiveRecord::Migration
  def change
    add_column :portada_revista, :texto1, :text
  end
end
