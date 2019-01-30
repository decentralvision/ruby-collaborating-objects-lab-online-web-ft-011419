class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
  end
  def self.save
    @@all << self
  end
  def find_or_create_by_name(name)
    @@all.any?{|artist| artist.name == name}
  end
end
