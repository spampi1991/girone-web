class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :stadium
      t.string :address
      t.string :telephone
      t.string :pitch_type

      t.timestamps
    end
  end
end
