class CreatePanfletos < ActiveRecord::Migration
  def change
    create_table :panfletos do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
