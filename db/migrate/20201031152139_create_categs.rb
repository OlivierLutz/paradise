class CreateCategs < ActiveRecord::Migration[6.0]
  def change
    create_table :categs do |t|
      t.string :nature
      t.float :deductibilite
      t.string :souscat
      t.string :user
      t.timestamps
    end
  end
end
