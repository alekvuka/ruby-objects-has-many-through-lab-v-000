require 'pry'

class Artist

  attr_accessor :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end

 def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    array_of_songs = self.songs
    array_of_songs.select do |song|
      song.genre
    end 
  end

  def self.all
    @@all
  end


end
