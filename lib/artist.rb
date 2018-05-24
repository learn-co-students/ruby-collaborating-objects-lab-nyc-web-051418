require 'pry'
require_relative 'song'

class Artist
  @@all = []

  #instance methods
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  #class methods
  def self.find_or_create_by_name(artist_name)
    existing_artist = all.detect {|artist| artist.name == artist_name}
    existing_artist.nil? ? Artist.new(artist_name) : existing_artist
  end

  def self.all
    @@all
  end

end
