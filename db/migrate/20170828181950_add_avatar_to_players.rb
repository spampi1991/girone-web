class AddAvatarToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :avatar, :string
  end
end
