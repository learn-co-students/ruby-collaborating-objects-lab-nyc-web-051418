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
      if @artist
        Artist#.name = name
      else
        @artist.name
      end

  end

  def print_songs
    @songs.each {|song| puts song.name}
  end


end


# song = Song.new(name)
# self.songs << song
# song.name = self
