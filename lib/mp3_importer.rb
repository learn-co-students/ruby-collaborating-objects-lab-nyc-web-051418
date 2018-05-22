require 'pry'

class MP3Importer

    #parses directory of files
    #Sends filenames to song class to create library with unique artists

    attr_accessor :path, :files

    @@all = []

    def initialize(path)
      @path = path
      @files = Dir.entries(path).select {|f| !File.directory? f}
    end

    def import
      # binding.pry
      # @files << Artist.all
      # # @files << Artist.find_or_create_by_name
      #  @@all << Artist.all



      files.each do |individual_file|


          Song.new_by_filename(individual_file)
      end


    end


end

# Pry.start



#MP3Importer.new('./db/mp3s').import


#The MP3 Importer will parse all the filenames in the db/mp3s folder and send the filenames to the Song class

#Pry.start
