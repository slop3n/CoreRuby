class Track
  attr_accessor :artist, :name, :album, :genre

  def initialize(artist, name, album, genre)
    @artist = artist
    @name = name
    @album = album
    @genre = genre
  end

  def to_s
    "#{artist}, #{name}, #{album}, #{genre}"
  end

  def ==(other)
    return false if self.artist != other.artist
    return false if self.name != other.name
    return false if self.album != other.album
    return false if self.genre != other.album
    return true
  end
end

class Playlist
  attr_accessor :tracks

  def initialize(*tracks)
    @tracks = tracks.flatten
  end

  def self.from_yaml(path)
    # Your code goes here.
  end

  def each
    @tracks.each do |x|
      yield(x)
    end
  end

  def find(&block)
    Playlist.new(@tracks.select(&block))
  end

  def find_by(*filters)
    tracks = [].tap do |tracks|
      filters.each do |filter|
        tracks << @tracks.select { |x| filter.call(x)}
      end
    end
  end

  def add(track)
    @tracks << track
  end

  def find_helper(type, value)
    tracks = []
    tracks << @tracks.select { |x| x.public_send(type) == value }
    tracks
  end

  def find_by_artist(artist_to_find)
    Playlist.new(find_helper("artist", artist_to_find))
  end

  def find_by_name(name_to_find)
    Playlist.new(find_helper("name",name_to_find))
  end

  def find_by_album(album_to_find)
    Playlist.new(find_helper("album", album_to_find))
  end

  def find_by_genre(genre_to_find)
    Playlist.new(find_helper("genre", genre_to_find))
  end

  def shuffle
    @tracks.shuffle
  end

  def random
    @tracks[rand(tracks.count)]
  end

  def to_s
    string = ""
    self.each do |track|
      string += "Artist: #{track.artist}, Track: #{track.name}, Album: #{track.album}, Genre: #{track.genre}\n"
    end
    string
  end

  def &(playlist)
    tracks = []
    playlist.each do |track|
      tracks << track if @tracks.include? track
    end
  end

  def |(playlist)
    tracks = @tracks.dup
    playlist.each do |track|
      tracks << track
    end
    Playlist.new(tracks.uniq)
  end

  def -(playlist)
    new_tracks = @tracks.dup
    playlist.each do |track|
      new_tracks = new_tracks.reject { |other_track| track == other_track }
    end
    Playlist.new(new_tracks)
  end
end

def add value=1
  puts value
end

add
