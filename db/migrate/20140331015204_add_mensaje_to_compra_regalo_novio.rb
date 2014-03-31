class AddMensajeToCompraRegaloNovio < ActiveRecord::Migration
  def change
    add_column :compra_regalo_novios, :mensaje, :text
  end
end
