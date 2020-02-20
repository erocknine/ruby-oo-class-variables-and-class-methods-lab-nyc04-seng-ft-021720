class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_hash = {}
  @@genre_hash = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.artist_count
    @@artist
  end
  
  def self.genre_count
    @@genres.each 
  end
  
end