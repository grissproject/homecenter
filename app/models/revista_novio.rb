class RevistaNovio < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :productos

  attr_accessible :direccion, :fecha, :nombre_novia, :nombre_novio, :texto_invitacion, :user_id, :producto_ids, :foto_novio, :foto_novia

  has_attached_file :foto_novio, :styles => { :medium => "300x300>", :thumb => "168x168>" }, :default_url => "/images/no-photo.jpg"
  has_attached_file :foto_novia, :styles => { :medium => "300x300>", :thumb => "168x168>" }, :default_url => "/images/no-photo.jpg"
end
