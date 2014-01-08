# musicians_songs.rb
class MusiciansSong < ActiveRecord::Base
  belongs_to :musician
  belongs_to :song 
end