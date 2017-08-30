class AddGoalsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :local_team_goals, :integer
    add_column :events, :away_team_goals, :integer
  end
end
