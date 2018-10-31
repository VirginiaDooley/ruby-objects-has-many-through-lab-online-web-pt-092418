require 'pry'

class Artist

  @@all = []

  attr_accessor :name, :genre

  def initialize(name)
    @songs = []
    @name = name
    @genre = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs << song
    song
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  #genres has many genres, through songs

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
