class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.date :birthday
      t.string :role

      t.belongs_to :team, index: true, foreign_key: true
      t.timestamps
    end
  end
end
