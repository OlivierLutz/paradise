class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :impots, :description, :text
    add_column :impots, :date, :date
    add_column :impots, :created_at, :datetime
    add_column :impots, :updated_at, :datetime
  end
end
