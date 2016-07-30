class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.integer :year
      t.string :name

      t.timestamps
    end
  end
end
