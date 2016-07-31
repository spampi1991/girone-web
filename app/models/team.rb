class Team < ApplicationRecord
  validates :name, :stadium, :address, :telephone, presence: true
  has_many :players
  has_many :local_events, class_name: "Event", foreign_key: "local_team_id"
  has_many :away_events, class_name: "Event", foreign_key: "away_team_id"
end
