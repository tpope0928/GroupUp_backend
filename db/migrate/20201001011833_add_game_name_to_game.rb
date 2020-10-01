class AddGameNameToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :game_name, :string
  end
end
