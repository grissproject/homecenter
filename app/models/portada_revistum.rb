class PortadaRevistum < ActiveRecord::Base
  has_many :revista_mensual

  attr_accessible :activo, :descripcion, :titulo, :texto1, :texto2, :estilo, :imagen1, :imagen2

  has_attached_file :imagen1, :styles => { :medium => "300x300>", :thumb => "168x168>" }, :default_url => "/images/no-photo.jpg"
  has_attached_file :imagen2, :styles => { :medium => "300x300>", :thumb => "168x168>" }, :default_url => "/images/no-photo.jpg"
end
