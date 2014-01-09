# song.rb

class Song < ActiveRecord::Base
  has_many :musician_songs
  has_many :musicians, :through => :musician_songs
end