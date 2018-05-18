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
    name = file.split(/(?: - )|(?:.mp3)/)[1]
    song = new(name)
    artist = file.split(/(?: - )|(?:.mp3)/)[0]
    artist_class = Artist.find_or_create_by_name(artist)
    song.artist = artist_class
    song
    # binding.pry
  end
end
