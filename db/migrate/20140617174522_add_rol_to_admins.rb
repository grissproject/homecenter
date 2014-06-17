class AddRolToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :rol, :string
  end
end
