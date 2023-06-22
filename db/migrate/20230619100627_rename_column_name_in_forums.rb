class RenameColumnNameInForums < ActiveRecord::Migration[7.0]
  def change
    rename_column :forums, :name, :title
  end
end
