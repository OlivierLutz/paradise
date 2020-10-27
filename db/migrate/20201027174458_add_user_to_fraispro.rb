class AddUserToFraispro < ActiveRecord::Migration[6.0]
  def change
    add_column :fraispros, :user, :string
  end
end
