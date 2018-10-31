require 'pry'

class Genre

  @@all = []

  attr_accessor :name, :artists, :songs

  def initialize(name)
    @name = name
    @artists = []
    @songs = []
    @@all << self
  end

  def songs
    Song.all
  end

  def self.all
    @@all
  end

  #artists has many artists, through songs
  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end
