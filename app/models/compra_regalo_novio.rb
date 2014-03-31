class CompraRegaloNovio < ActiveRecord::Base
  belongs_to :revista_novio
  belongs_to :producto
  belongs_to :user
  attr_accessible :mensaje, :monto, :producto_id, :revista_novio_id, :user_id
end
