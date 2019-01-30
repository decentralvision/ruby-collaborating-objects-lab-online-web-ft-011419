require 'pry'
class MP3Importer
  attr_accessor :file_path
  def initialize(file_path)
    @file_path = file_path
  end
  def files
    binding.pry
    Dir[@file_path].select{|file| file[-4..-1] == '.mp3'}
  end
  def import
  end
end
