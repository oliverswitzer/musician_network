# musicians_songs.rb
class MusicianSong < ActiveRecord::Base
  belongs_to :musician
  belongs_to :song 
end