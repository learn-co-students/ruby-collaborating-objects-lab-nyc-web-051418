class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(search)
    result = @@all.find {|artist| artist.name == search}
    if result
      result
    else
      new_artist = Artist.new(search)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
