require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    binding.pry
    Dir[@path/*].select{|file| file.chars.last(4).join == '.mp3'}
  end
  def import
  end
end
