class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
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
    artist_hash = {}
    @@artist.each do |artist|
      if !artist_hash[artist]
        artist_hash[artist] = 1
      else if artist_hash[artist]
        artist_hash[artist] += 1
      end
    artist_hash
  end
  
  def self.genre_count
    genre_hash = {}

  end
  
end