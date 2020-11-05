class AddNatureoldToCateg < ActiveRecord::Migration[6.0]
  def change
    add_column :categs, :natureold, :string
  end
end
