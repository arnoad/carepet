class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :address, :string
    add_column :users, :bio, :text
    add_column :users, :house_type, :string
    add_column :users, :carer?, :boolean, default: false
    add_column :users, :age, :integer
  end
end
