class UpdateClientsForeignKeyConstraint < ActiveRecord::Migration[7.0]
  def up
    remove_foreign_key :pumps, :clients if foreign_key_exists?(:pumps, :clients)
    add_foreign_key :pumps, :clients, on_delete: :cascade
  end

  def down
    remove_foreign_key :pumps, :clients
    add_foreign_key :pumps, :clients
  end
end