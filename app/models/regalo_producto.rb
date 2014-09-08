class RegaloProducto < ActiveRecord::Base
  belongs_to :producto
  belongs_to :user
  attr_accessible :activo, :mensaje
end
