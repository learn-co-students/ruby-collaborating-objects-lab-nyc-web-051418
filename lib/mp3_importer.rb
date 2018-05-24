require 'pry'
require_relative 'song'

class MP3Importer
  # instance methods
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.glob("#{@path}/*.mp3").collect do |rb_file|
      @files << rb_file.split('./spec/fixtures/mp3s/')[1]
    end
    @files
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
