class AddColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :sub_title, :string
  end
end
