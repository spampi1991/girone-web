class CreateRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :rankings do |t|
      t.integer :victories
      t.integer :defeats
      t.integer :draws
      t.integer :games
      t.integer :goals_scored
      t.integer :goals_suffered
      t.integer :points

      t.belongs_to :team, index: true, foreign_key: true
      t.belongs_to :season, index: true, foreign_key: true
      t.timestamps
    end
  end
end
