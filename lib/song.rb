require 'pry'

class Song

  attr_accessor :name, :artist

  @@songs = []
#  @@artists []

  def initialize(name)
    @name = name
    @artist = artist
  end

  def get_artist (artist)
    Artist.find_or_create_by_name(artist)
  end

  def self.new_by_filename (filename)
    #binding.pry

    add_song = filename.split("-")
    song_array = add_song.map {|index| index.strip}
    #array of songs [artist, song, file_extension]
    #new_song = self.new(add_song)




    # self.(get_artist(artist)).new = song_array[0]
    #binding.pry
    #@@artists << song_array[0]
    @@songs << song_array[1]
    #binding.pry


  end



end

#Pry.start
