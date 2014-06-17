class CreateRevistaMensuals < ActiveRecord::Migration
  def change
    create_table :revista_mensuals do |t|
      t.string :titulo
      t.string :temporada
      t.text :descripcion
      t.string :estilo
      t.boolean :home

      t.timestamps
    end
  end
end
