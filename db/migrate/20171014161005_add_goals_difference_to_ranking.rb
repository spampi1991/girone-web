class AddGoalsDifferenceToRanking < ActiveRecord::Migration[5.1]
  def change
    add_column :rankings, :goals_difference, :integer
  end
end
