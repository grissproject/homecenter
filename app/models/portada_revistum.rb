class PortadaRevistum < ActiveRecord::Base
  has_many :revista_mensual

  attr_accessible :activo, :descripcion, :titulo
end
