class Client < ApplicationRecord
    has_many :pumps, dependent: :destroy
    validates :name, presence: true
  end
