class Role < ApplicationRecord
  validates :type, presence: true

  has_and_belongs_to_many :users
end
