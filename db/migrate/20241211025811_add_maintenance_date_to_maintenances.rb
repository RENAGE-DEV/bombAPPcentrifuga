class AddMaintenanceDateToMaintenances < ActiveRecord::Migration[8.0]
  def change
    add_column :maintenances, :maintenance_date, :date
  end
end
