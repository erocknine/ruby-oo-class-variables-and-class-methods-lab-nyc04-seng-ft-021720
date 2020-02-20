class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genre = []
  @@artist = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artist << artist
    @@genre << genre
    @@count += 1
  end

  def self.count
    @@count
  end
  
  def self.artists
    @@artist.uniq!
  end
  
  def self.genres
    @@genre.uniq!
  end
  
  def self.artist_count
    artist_hash = {}
    @@artist.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end
  
  def self.genre_count
    genre_hash = {}
    @@genre.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end
  
end