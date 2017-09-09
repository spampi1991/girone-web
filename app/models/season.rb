class Season < ApplicationRecord
  validates :name, :year, presence: true

  has_many :events
  has_many :rankings

  scope :current, -> { order(year: :desc).first }

end
