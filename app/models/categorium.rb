class Categorium < ActiveRecord::Base
  attr_accessible :descripcion, :nombre

  has_many :producto
end
