require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do
      Dir.glob("*.mp3")
    end
  end

  def import
    song_list = files
    song_list.each do |song|
      new_song = Song.new_by_filename(song)
    end

  end
end
