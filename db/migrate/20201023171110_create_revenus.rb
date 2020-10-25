class CreateRevenus < ActiveRecord::Migration[6.0]
  def change
    create_table :revenus do |t|

      t.float :revenuindep
      t.float :salaire
      t.timestamps
    end
  end
end
