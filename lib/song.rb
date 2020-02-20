class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @@artists = artist
    @@genres << genre
    @@count += 1
  end

  def count
    @@count
  end
  
  def genres
    @@genres.uniq!
  end
  
  def artists
    
  end
  
  def genre_count
    
  end
end