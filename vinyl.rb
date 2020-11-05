class Vinyl
  def initialize(artist, album, tracklist)
    @artist = artist
    @album = album
    @tracklist = tracklist
  end

  def read_artist
    @artist
  end

  def read_songs
    @tracklist
  end

  def shuff_songs
    @tracklist.shuffle
  end

  def shuff_artist
    @artist = @artist.chars.shuffle.join
  end

  def get_track(number)
    @tracklist[number - 1]
  end
end

class VinylCollection
  def initialize(collection)
    @collection = collection
  end

  def artist_lookup(name)
    correct_name = nil
    @collection.each do |artist|
      if artist.read_artist == name
        correct_name = artist
      end
    end
    correct_name
  end
end

# vinyl_collection = VinylCollection.new(
# [
#   Vinyl.new(
#     "Joe Biden",
#     "Democrats",
#     [
#       "Policy 1",
#       "Policy 2",
#     ]
#   ),
#   Vinyl.new(
#     "Orange",
#     "Republican",
#     [
#       "Policy 1",
#       "Policy 2",
#     ]
#   ),
# ])

# puts "Here are all the songs by Joe Biden: #{vinyl_collection.artist_lookup("Joe Biden").read_songs}"