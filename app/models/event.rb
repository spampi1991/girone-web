class Event < ApplicationRecord
  validates :event_date, :local_team_id, :away_team_id, :season_id, presence: true

  belongs_to :season
  belongs_to :local_team, class_name: 'Team', foreign_key: 'local_team_id'
  belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id'

  scope :of_season, ->(season) { where('season_id = ?', season) }

end
