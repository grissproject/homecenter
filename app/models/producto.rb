class Producto < ActiveRecord::Base
  belongs_to :categorium, :foreign_key => "categoria_id"
  has_and_belongs_to_many :revista_novios

  attr_accessible :codigo, :descripcion, :nombre, :stock, :imagen, :categoria_id, :novios, :precio

  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "168x168>" }, :default_url => "no-photo.jpg"
end
