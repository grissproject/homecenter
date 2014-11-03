class AddAttachmentImagen1ToPortadaRevista < ActiveRecord::Migration
  def self.up
    change_table :portada_revista do |t|
      t.attachment :imagen1
    end
  end

  def self.down
    drop_attached_file :portada_revista, :imagen1
  end
end
