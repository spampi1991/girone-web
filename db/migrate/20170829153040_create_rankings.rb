class CreateRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :rankings do |t|
      t.integer :victories, default: 0, null: false
      t.integer :defeats, default: 0, null: false
      t.integer :draws, default: 0, null: false
      t.integer :games, default: 0, null: false
      t.integer :goals_scored, default: 0, null: false
      t.integer :goals_suffered, default: 0, null: false
      t.integer :points, default: 0, null: false

      t.belongs_to :team, index: true, foreign_key: true
      t.belongs_to :season, index: true, foreign_key: true
      t.timestamps
    end

    add_index(:rankings, [:season_id, :team_id], unique: true, name: 'ranking_logical_key')

  end
end
