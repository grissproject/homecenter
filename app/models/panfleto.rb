class Panfleto < ActiveRecord::Base
  has_and_belongs_to_many :productos
  
  attr_accessible :descripcion, :titulo, :producto_ids
end
