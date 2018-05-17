require 'pry'

class MP3Importer

    attr_accessor :path, :files

    def initialize(path)
        @path = path
        #binding.pry
        @files = Dir.entries(path).select {|f| !File.directory? f}
    end

    # def files (path)
    #   # binding.pry
    #
    #   @files = Dir.entries(path).map {|f| !File.directory? f}
    #
    #
    # end

end

#pry.start
