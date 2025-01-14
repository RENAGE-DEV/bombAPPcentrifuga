class MaintenanceReason < ApplicationRecord
    has_many :maintenances
    validates :name, presence: true, uniqueness: true
  end