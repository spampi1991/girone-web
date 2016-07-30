class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.date :birthday
      t.string :role

      t.timestamps
    end
    add_reference :players, :team, foreign_key: true
  end
end
