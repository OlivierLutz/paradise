class CreateImpots < ActiveRecord::Migration[6.0]
  def change
    create_table :impots do |t|
      t.float :montant
    end
  end
end
