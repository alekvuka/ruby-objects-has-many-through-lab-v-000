class Genre

  @@all = Array.new

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Artist.all.select do |artist|
      artist.genres = self
    end
  end

  def self.all
    @@all
  end

end
