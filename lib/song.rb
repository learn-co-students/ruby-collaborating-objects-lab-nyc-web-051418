require 'pry'
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name, song_name = filename.split(" - ")
    new_song = Song.new(song_name)
    new_song.artist = artist_name
  end
end
