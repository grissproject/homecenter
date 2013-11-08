class AddAttachmentFotoNovioToRevistaNovios < ActiveRecord::Migration
  def self.up
    change_table :revista_novios do |t|
      t.attachment :foto_novio
    end
  end

  def self.down
    drop_attached_file :revista_novios, :foto_novio
  end
end
