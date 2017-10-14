class Team < ApplicationRecord
  paginates_per 30

  validates :name, :stadium, :address, :telephone, :pitch_type, presence: true

  mount_uploader :avatar, AvatarUploader

  has_many :players
  has_many :rankings
  has_many :local_events, class_name: "Event", foreign_key: "local_team_id"
  has_many :away_events, class_name: "Event", foreign_key: "away_team_id"

end
