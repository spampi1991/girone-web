class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :event_date
      t.integer :local_team_id
      t.integer :away_team_id

      t.belongs_to :season, index: true, foreign_key: true
      t.timestamps
    end

    add_foreign_key :events, :teams, column: :local_team_id
    add_foreign_key :events, :teams, column: :away_team_id
    add_index(:events, :local_team_id)
    add_index(:events, :away_team_id)
    add_index(:events, [:event_date, :season_id, :local_team_id, :away_team_id], unique: true, name: 'event_logical_key')

  end
end
