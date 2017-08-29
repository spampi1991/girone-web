class Season < ApplicationRecord
  validates :name, :year, presence: true

  has_many :events
  has_many :rankings
end
