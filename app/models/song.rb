# song.rb

class Song < ActiveRecord::Base
  has_many :musicians_songs
  has_many :musicians, :through => :musicians_songs
end