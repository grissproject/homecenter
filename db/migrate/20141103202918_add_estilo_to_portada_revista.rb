class AddEstiloToPortadaRevista < ActiveRecord::Migration
  def change
    add_column :portada_revista, :estilo, :string
  end
end
