require 'pry'

class Song

  attr_reader :name, :artist

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def name=(name)
    @name=name
  end

  def artist=(artist)
    @artist = artist
    Artist.all
  end

  def self.new_by_filename(file)
    name, artist = file.split(/(?: - )|(?:.mp3)/)[1], file.split(/(?: - )|(?:.mp3)/)[0]
    song = new(name)
    new_artist = Artist.find_or_create_by_name(artist)
    song.artist = new_artist
    new_artist.add_song(song)
    song
    # binding.pry
  end
end
