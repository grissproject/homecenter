class AddTexto2ToPortadaRevista < ActiveRecord::Migration
  def change
    add_column :portada_revista, :texto2, :text
  end
end
