class ImagenPortada < ActiveRecord::Base
  attr_accessible :descripcion, :titulo, :imagen

  has_attached_file :imagen, :styles => { :thumb => "438x163>" }, :default_url => "no-photo.jpg"
end
