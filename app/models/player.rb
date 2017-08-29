class Player < ApplicationRecord

  paginates_per 100

  mount_uploader :avatar, AvatarUploader

  validates :name, :surname, :birthday, :role, :preferred_foot, presence: true

  belongs_to :team
end
