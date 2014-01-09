class CreateMusiciansSongs < ActiveRecord::Migration
  def up
    create_table :musician_songs do |t|
      t.belongs_to :musician
      t.belongs_to :song
    end
  end

  def down
    drop_table :musician_songs
  end
end
