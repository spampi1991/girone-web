class Player < ApplicationRecord
  validates :name, :surname, :birthday, :role, presence: true

  belongs_to :team
end
