class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id_
      t.integer :song_id
      t.integer :stars

      t.timestamps null: false
    end
  end
end
