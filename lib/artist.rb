require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    # binding.pry
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name (name)
    #binding.pry
    #binding.pry
      if self.find(name)
        self.find(name)
      else
        self.create (name)
      end

  end

  def self.create (name)
    #binding.pry
      song = self.new
      song.name = name
      song
  end

  def self.find (name)
  #  binding.pry
    self.all.find {|artist| artist.name == name}
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end


end


# song = Song.new(name)
# self.songs << song
# song.name = self
