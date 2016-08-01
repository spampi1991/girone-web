class Season < ApplicationRecord
  paginates_per 10
  validates :name, :year, presence: true

  has_many :events
end
