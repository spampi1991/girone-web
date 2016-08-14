class Player < ApplicationRecord
  validates :name, :surname, :birthday, :role, :shirt_number, :preferred_foot, presence: true

  belongs_to :team
end
