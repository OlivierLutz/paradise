class AddMoisToRevenu < ActiveRecord::Migration[6.0]
  def change
    add_column :revenus, :mois, :string
  end
end
