class CreateFraispros < ActiveRecord::Migration[6.0]
  def change
    create_table :fraispros do |t|
      t.string :nature
      t.string :facture
      t.string :compte
      t.string :bank
      t.date :date
      t.float :montant
      t.text :description
      t.float :deductibilite
      t.float :privepro
      t.float :total

      t.timestamps
    end
  end
end
