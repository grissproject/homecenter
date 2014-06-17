class RevistaMensual < ActiveRecord::Base
  has_and_belongs_to_many :productos

  attr_accessible :descripcion, :estilo, :home, :temporada, :titulo, :producto_ids
end
