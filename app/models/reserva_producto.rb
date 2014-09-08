class ReservaProducto < ActiveRecord::Base
  belongs_to :producto
  belongs_to :user
  attr_accessible :activo, :mensaje, :producto_id, :user_id
end
