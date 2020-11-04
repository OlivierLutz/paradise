class CreateParams < ActiveRecord::Migration[6.0]
  def change
    create_table :params do |t|
      t.string :trifraispro
      t.string :user
      t.timestamps
    end
  end
end
