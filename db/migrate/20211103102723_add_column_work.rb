class AddColumnWork < ActiveRecord::Migration[6.1]
  def change
    add_column :works, :url2, :string
    add_column :works, :url3, :string
  end
end
