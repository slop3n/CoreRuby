require 'minitest/autorun'

require_relative 'solution'

class SolutionTest < Minitest::Test
  def test_the_truth
    assert true
  end

  def test_find_by_artist
    track1 = Track.new("Sigma", "The Reason", "Album 1", "liquid dnb")
    track2 = Track.new("Netsky", "Everyday", "Album 2", "liquid dnb")
    track3 = Track.new("State of Mind", "Sun King", "Album 2", "dnb")
    playlist = Playlist.new(track1, track2, track3)
  end
end
