class AddAttachmentImagenToImagenPortadas < ActiveRecord::Migration
  def self.up
    change_table :imagen_portadas do |t|
      t.attachment :imagen
    end
  end

  def self.down
    drop_attached_file :imagen_portadas, :imagen
  end
end
