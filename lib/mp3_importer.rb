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
      artist_name, song_name = song.split(" - ")
      new_song = Song.new(song_name)
      new_song.artist = Artist.find_or_create_by_name(artist_name)
      new_song.artist.add_song(new_song)
    end

  end
end

import = MP3Importer.new("./spec/fixtures/mp3s")
