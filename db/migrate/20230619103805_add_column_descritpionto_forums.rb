class AddColumnDescritpiontoForums < ActiveRecord::Migration[7.0]
  def change
    add_column :forums, :description, :text
  end
end
