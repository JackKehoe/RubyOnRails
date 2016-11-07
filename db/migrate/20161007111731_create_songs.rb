class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.integer :genre_id
      t.date :date_released

      t.timestamps null: false
    end
  end
end
