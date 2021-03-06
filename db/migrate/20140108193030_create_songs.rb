class CreateSongs < ActiveRecord::Migration
  def up
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :genre
    end
  end

  def down
    drop_table :songs
  end
end
