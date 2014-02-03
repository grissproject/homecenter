class AddEstiloToRevistaNovios < ActiveRecord::Migration
  def change
    add_column :revista_novios, :estilo, :string
  end
end
