class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*"].map do |file_new|
     path_and_name = file_new.split("/")
     path_and_name[-1]
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
