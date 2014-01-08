# musician.rb

class Musician < ActiveRecord::Base
  has_many :musicians_songs  #define this first
  has_many :songs, :through => :musicians_songs  #then you can use musicians_songs here
end
