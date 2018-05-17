class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*"].map { |new_file| new_file.split("/")[-1] }
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
