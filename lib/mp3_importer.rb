#require "pry"

class MP3Importer
  attr_reader :path, :files
  def initialize(path)
    @path = path
    @files = Dir.entries(path).select {|f| f[-3..-1] == "mp3"}
  end

  def import
    @files.each do |file|
      new_song = Song.new_by_filename(file)
      #binding.pry
    end
  end
end
