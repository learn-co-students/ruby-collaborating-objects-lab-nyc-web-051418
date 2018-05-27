class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song
    @@add = self
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]

    song = Song.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)

    song.artist.add_song(song)
    song
  end

end
