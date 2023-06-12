class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :type
      t.string :breed
      t.string :medical_cond
      t.string :special_needs
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
