require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def print_songs
  #  binding.pry
    @songs.each {|song| puts song.name}
  end

  def self.find_artist (name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create_artist (name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
      if self.find_artist(name)
        self.find_artist(name)
      else
        self.create_artist(name)


      end
  end

end

#Pry.start

#The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).
