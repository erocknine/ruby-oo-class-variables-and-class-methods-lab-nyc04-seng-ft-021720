class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@genre_hash = {}
  @@artists = []
  @@artist_hash = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    if !artist_hash[artist]
      @@artist_hash[artist] = 1
    else if @@artist_hash[artist]
      @@artist_hash[artist] += 1
    @@genres << genre
    if !@@genre_hash[genre]
      @@genre_hash[genre] = 1
    else if @@genre_hash[genre]
      @@genre_hash[genre] += 1
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
    @@artist_hash
  end
  
  def self.genre_count
    @@genre_hash
  end
  
end