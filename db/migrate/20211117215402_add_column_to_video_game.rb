class AddColumnToVideoGame < ActiveRecord::Migration[6.1]
  def change
    add_column :video_games, :user_id, :integer
  end
end
