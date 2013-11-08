class CompraRegaloNovio < ActiveRecord::Base
  belongs_to :revista_novio
  belongs_to :producto
  belongs_to :user
  attr_accessible :monto
end
