require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do
      Dir.glob("*.mp3")
    end
  end

  def import
    song_list = files
    song_list.each do |song|
      artist, song_name = song.split(" - ")
      new_song = Song.new(song_name)
      new_song.artist = artist
    end 
  end
end

import = MP3Importer.new("./spec/fixtures/mp3s")
