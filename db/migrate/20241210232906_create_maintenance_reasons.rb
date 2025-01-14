class CreateMaintenanceReasons < ActiveRecord::Migration[8.0]
  def change
    create_table :maintenance_reasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
