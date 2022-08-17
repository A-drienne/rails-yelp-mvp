class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
