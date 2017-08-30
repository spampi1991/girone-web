class Ranking < ApplicationRecord

  validates :season_id, :team_id, presence: true

  belongs_to :team
  belongs_to :season

  scope :of_season, ->(season) { where('season_id = ?', season) }

end