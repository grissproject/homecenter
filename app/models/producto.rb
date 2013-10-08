class Producto < ActiveRecord::Base
  belongs_to :categoria
  attr_accessible :codigo, :descripcion, :nombre, :stock
end
