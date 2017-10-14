class Ranking < ApplicationRecord

  paginates_per 5

  validates :season_id, :team_id, presence: true

  belongs_to :team
  belongs_to :season

  scope :of_season, ->(season) { where('season_id = ?', season).order(points: :desc, goals_difference: :desc) }

end
