class CreateRevistaNovios < ActiveRecord::Migration
  def change
    create_table :revista_novios do |t|
      t.string :nombre_novio
      t.string :nombre_novia
      t.datetime :fecha
      t.text :texto_invitacion
      t.text :direccion
      t.references :user

      t.timestamps
    end
    add_index :revista_novios, :user_id
  end
end
