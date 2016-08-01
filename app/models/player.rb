class Player < ApplicationRecord
  paginates_per 10
  validates :name, :surname, :birthday, :role, presence: true

  belongs_to :team
end
