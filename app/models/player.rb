class Player < ApplicationRecord
  paginates_per 10

  validates :name, :surname, :birthday, :role, :shirt_number, :preferred_foot, presence: true

  belongs_to :team
end
