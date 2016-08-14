class Team < ApplicationRecord
  paginates_per 10

  validates :name, :stadium, :address, :telephone, :pitch_type, presence: true

  has_many :players
  has_many :local_events, class_name: "Event", foreign_key: "local_team_id"
  has_many :away_events, class_name: "Event", foreign_key: "away_team_id"

  def self.search(search)
    where("name LIKE ? OR stadium LIKE ? OR address like ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
