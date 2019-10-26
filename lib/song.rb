class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists & @@artists
  end

  def self.genres
    @@genres & @@genres
  end

  def self.genre_count
    count = Hash.new(0)
    @@genres.each {|n| count[n] += 1}
    count
  end

  def self.artist_count
    count = Hash.new(0)
    @@artists.each {|n| count[n] += 1}
    count
  end
end