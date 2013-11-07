class Producto < ActiveRecord::Base
  belongs_to :categorium, :foreign_key => "categoria_id"
  attr_accessible :codigo, :descripcion, :nombre, :stock, :imagen, :categoria_id, :novios

  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "168x168>" }, :default_url => "/images/no-photo.jpg"
end
