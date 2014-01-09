# musician.rb

class Musician < ActiveRecord::Base
  has_many :musician_songs  #define this first
  has_many :songs, :through => :musician_songs  #then you can use musicians_songs here
end
