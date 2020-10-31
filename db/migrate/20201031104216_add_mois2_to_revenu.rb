class AddMois2ToRevenu < ActiveRecord::Migration[6.0]
  def change
    remove_column :revenus, :mois
    add_column :revenus, :mois, :float
  end
end
