class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :status
      t.date :start_date
      t.date :end_date
      t.boolean :carers_home
      t.references :user, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
