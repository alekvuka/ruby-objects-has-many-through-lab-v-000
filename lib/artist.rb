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
    
  end

  def genres
  end

  def self.all
    @@all
  end


end
