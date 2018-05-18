class Artist
  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  def self.find_or_create_by_name(name)
    # Find the artist instance that has that name
    if self.find(name)
      self.find(name)
    else
      # or create one if it doesn't exist
      self.create(name)
    end
    # return value of the method will be an instance of an artist with the name attribute filled out
  end

  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    self.new(name).tap do |artist|
      artist.save
    end
  end
end
