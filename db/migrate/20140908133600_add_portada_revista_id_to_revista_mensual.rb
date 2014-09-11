class AddPortadaRevistaIdToRevistaMensual < ActiveRecord::Migration
  def change
    add_column :revista_mensuals, :portada_revista_id, :integer
  end
end
