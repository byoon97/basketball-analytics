class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.text :bio
      t.string :fav_player
      t.string :fav_team

      t.timestamps
    end
  end
end
