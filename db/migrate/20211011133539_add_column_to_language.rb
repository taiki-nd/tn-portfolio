class AddColumnToLanguage < ActiveRecord::Migration[6.1]
  def change
    add_column :languages, :kind, :string
  end
end
