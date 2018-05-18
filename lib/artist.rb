require 'pry'

class Artist

  attr_reader :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def name=(name)
    @name = name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(artist_name)
      all.each do |artist|
        if artist.name == artist_name
          return artist
        end
      end
      new(artist_name)
    end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
