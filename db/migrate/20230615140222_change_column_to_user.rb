class ChangeColumnToUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :carer?, :carer
  end
end
