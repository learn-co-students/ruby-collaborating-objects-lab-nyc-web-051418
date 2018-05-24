require 'pry'
require_relative 'artist'
require_relative 'mp3_importer'

class Song

  #instance methods
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def artist=(artist_instance)
    @artist = artist_instance
  end

  #class methods
  def self.new_by_filename(filename)
    #New song
    song_name = filename.split(" - ")[1]
    new_song = Song.new(song_name)

    #New artist or existing artist returned
    song_artist = filename.split(" - ")[0]
    returned_artist = Artist.find_or_create_by_name(song_artist)

    #Song belongs to artist
    new_song.artist = returned_artist

    #Artists has song in collection
    returned_artist.add_song(new_song)

    new_song
  end

end
