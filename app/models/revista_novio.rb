class RevistaNovio < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :productos

  attr_accessible :direccion, :fecha, :nombre_novia, :nombre_novio, :texto_invitacion, :user_id, :producto_ids, :foto_novio, :foto_novia, :titulo, :estilo

  has_attached_file :foto_novio, :styles => { :medium => "300x300>", :thumb => "168x168>" }, :default_url => "/images/no-photo.jpg"
  has_attached_file :foto_novia, :styles => { :medium => "300x300>", :thumb => "168x168>" }, :default_url => "/images/no-photo.jpg"

  validate :fecha_cannot_be_in_the_past

  def fecha_cannot_be_in_the_past
    errors.add(:fecha, "no pude ser una fecha pasada") if
      !fecha.blank? and fecha < Date.today
  end
end
