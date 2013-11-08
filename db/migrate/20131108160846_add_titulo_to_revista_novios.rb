class AddTituloToRevistaNovios < ActiveRecord::Migration
  def change
    add_column :revista_novios, :titulo, :string
  end
end
