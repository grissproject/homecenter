class AddAttachmentImagen2ToPortadaRevista < ActiveRecord::Migration
  def self.up
    change_table :portada_revista do |t|
      t.attachment :imagen2
    end
  end

  def self.down
    drop_attached_file :portada_revista, :imagen2
  end
end
