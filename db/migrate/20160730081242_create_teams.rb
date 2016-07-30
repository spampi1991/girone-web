class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :stadium
      t.integer :foundation_year
      t.string :telephone

      t.timestamps
    end
  end
end
