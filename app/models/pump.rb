class Pump < ApplicationRecord
  belongs_to :client
  has_many :maintenances, dependent: :destroy
  has_many :maintenance_reasons, through: :maintenances
end