class CreatePumps < ActiveRecord::Migration[8.0]
  def change
    create_table :pumps do |t|
      t.string :model
      t.string :name
      t.decimal :length
      t.string :material
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
