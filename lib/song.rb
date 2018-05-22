require 'pry'

class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
      @name = name
    end

    def add_song
      @@all = self
    end

    def self.new_by_filename(filename)

        new_by_file_array = []
        new_by_file_array = filename.split(" - ")


        the_artist = new_by_file_array[0]
        the_song = new_by_file_array[1]
        new_song = Song.new(the_song)
        new_artist = Artist.find_or_create_by_name(the_artist)
        new_song.artist = new_artist
        new_artist.add_song(new_song)
        new_song


    end

  end  
