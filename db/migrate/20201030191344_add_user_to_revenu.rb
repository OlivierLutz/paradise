class AddUserToRevenu < ActiveRecord::Migration[6.0]
  def change
    add_column :revenus, :user, :string
  end
end
