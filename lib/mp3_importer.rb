require 'pry'

class MP3Importer

    attr_accessor :path, :files

    def initialize(path)
        @path = path

        @files = Dir.entries(path).select {|f| !File.directory? f}

        # add_song = filename.split("-")
        # song_array = add_song.map {|index| index.strip}
        # binding.pry
    end


    def import
      @files.map { |file| Song.new_by_filename(file) }

    end

end

#pry.start
