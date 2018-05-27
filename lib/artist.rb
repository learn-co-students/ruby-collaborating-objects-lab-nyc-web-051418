class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    name_found = self.all.find do |artist|
      artist.name == name
    end

    if name_found
      name_found
    else
      self.new(name).tap do |artist|
      artist.save
    end
  end

  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
