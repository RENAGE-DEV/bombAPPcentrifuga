class UpdateMaintenanceReasonsForeignKey < ActiveRecord::Migration[7.0]
  def up
    remove_foreign_key :maintenances, :maintenance_reasons
    add_foreign_key :maintenances, :maintenance_reasons, on_delete: :cascade
  end

  def down
    remove_foreign_key :maintenances, :maintenance_reasons
    add_foreign_key :maintenances, :maintenance_reasons
  end
end