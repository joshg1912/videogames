class CreateVideoGames < ActiveRecord::Migration[6.1]
  def change
    create_table :video_games do |t|
      t.string :name
      t.integer :year
      t.string :plot

      t.timestamps
    end
  end
end
