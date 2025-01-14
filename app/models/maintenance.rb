class Maintenance < ApplicationRecord
  belongs_to :pump
  belongs_to :maintenance_reason

  validates :maintenance_reason_id, presence: true
  
  # Agregar timestamp para ordenar
  default_scope { order(created_at: :desc) }
end