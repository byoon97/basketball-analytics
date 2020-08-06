class CreateFavPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :fav_players do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
