class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@artists = artist
    @@genres << genre
    @@count += 1
  end

  def count
    @@count
  end
  
  def genres
    @@genres.uniq
  end
  
  def artists
    
  end
end