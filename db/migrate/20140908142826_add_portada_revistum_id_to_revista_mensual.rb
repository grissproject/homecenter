class AddPortadaRevistumIdToRevistaMensual < ActiveRecord::Migration
  def change
    add_column :revista_mensuals, :portada_revistum_id, :integer
  end
end
