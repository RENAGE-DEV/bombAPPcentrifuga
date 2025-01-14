class CreateMaintenances < ActiveRecord::Migration[8.0]
  def change
    create_table :maintenances do |t|
      t.references :maintenance_reason, null: false, foreign_key: true
      t.references :pump, null: false, foreign_key: true
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
