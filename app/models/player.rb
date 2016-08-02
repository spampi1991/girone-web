class Player < ApplicationRecord
  paginates_per 5
  validates :name, :surname, :birthday, :role, presence: true

  belongs_to :team
end
