class CreateMusiciansSongs < ActiveRecord::Migration
  def up
    create_table :musicians_songs do |t|
      t.belongs_to :musician
      t.belongs_to :song
    end
  end

  def down
    drop_table :musicians_songs
  end
end
