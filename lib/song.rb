class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    # parse file name
    parsed_file = file.split(" - ")
    # create a new song instance
    new_song = self.new(parsed_file[1])
    # Song.artist_name = artist_name to assign an artist to a song
    new_song.artist_name = parsed_file[0]
    # return the new song instance
    new_song
  end

  def artist_name=(name)
    # Turn the artist's name as a string into an artist object
    self.artist = Artist.find_or_create_by_name(name)
      # Either we have to create that artist instance
      # Or it already exists and we have to find that artist instance
    # call Artist.find_or_create_by_name(artists-name-here)
    # call Artist#add_song(some_song)
    artist.add_song(self)
  end
end
