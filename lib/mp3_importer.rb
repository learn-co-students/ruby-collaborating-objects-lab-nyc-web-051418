class MP3Importer
# class that parses a directory of files and sends the filenames to a song class
# to create a library of music with artists that are unique
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "")}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
