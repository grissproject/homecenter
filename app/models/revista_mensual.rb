class RevistaMensual < ActiveRecord::Base
  belongs_to :portada_revistum
  has_and_belongs_to_many :productos

  attr_accessible :descripcion, :estilo, :home, :temporada, :titulo, :producto_ids, :portada_revistum_id 
end
