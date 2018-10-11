class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1
    @@artists << artist
    @@genres << genre
    @@all << self
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    all_genres = {}
    @@genres.each do |genre|
      if all_genres[genre]
        all_genres[genre] += 1
      else
        all_genres[genre] = 1
      end
    end
    all_genres
  end

  def self.artist_count
    all_artists = {}
    @@artists.each do |artist|
      if all_artists[artist]
        all_artists[artist] += 1
      else
        all_artists[artist] = 1
      end
    end
    all_artists
  end


end
