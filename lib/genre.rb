class Genre

  @@all = Array.new

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    

  def self.all
    @@all
  end

end
