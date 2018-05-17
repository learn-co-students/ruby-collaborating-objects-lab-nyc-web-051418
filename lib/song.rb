class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_details = filename.split(" - ")
    artist_name = song_details[0]
    title = song_details[1]
    new_song = Song.new(title)
    new_artist = Artist.find_or_create_by_name(artist_name)
    new_song.artist = new_artist
    new_artist.add_song(new_song)
    new_song
  end
end
