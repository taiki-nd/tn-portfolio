class AddColumnToWork < ActiveRecord::Migration[6.1]
  def change
    add_column :works, :url, :string
  end
end
