class AddNombreAndApellidoToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :nombre, :string
    add_column :admins, :apellido, :string
  end
end
