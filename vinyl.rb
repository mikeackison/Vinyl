#comment
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
  
  require "minitest/autorun"
  
  class Test < Minitest::Test
    def setup
      @vinyl_collection = vinyl_collection = VinylCollection.new(
        [
          Vinyl.new(
            "Prince and the Revolution",
            "1999",
            [
              "1999",
              "Little Red Corvette",
              "Delirious",
              "Let's Pretend We're Married",
              "D.M.S.R.",
              "Automatic",
              "Something in the Water (Does Not Compute)",
              "Free",
              "Lady Cab Driver",
              "All the Critics Love U in New York",
              "International Lover",
            ]
          ),
  
          Vinyl.new(
            "Soulwax",
            "Any Minute Now",
            [
              "E Talking",
              "Any Minute Now",
              "Please... Don't Be Yourself",
              "Compute",
              "KracK",
              "Slowdance",
              "A Ballad to Forget",
              "Accidents and Compliments",
              "NY Excuse",
              "Miserable Girl",
              "YYY/NNN",
              "The Truth Is So Boring",
              "Dance 2 Slow",
            ]
          ),
        ]
      )
  
      name = "Soulwax"
      @vinyl = @vinyl_collection.artist_lookup(name)
    end
  
    def test_shuff_artist
      original_title = @vinyl.read_artist
      vinyl.shuff_artist
      new_title = @vinyl.read_artist
      refute_equal original_title, new_title
      assert_equal(new_title.class, original_title.class)
    end
  
    def test_new_title
      original_title = @vinyl.read_artist
      new_title = @vinyl.read_artist
      assert_equal new_title.class, original_title.class
      assert_equal new_title, original_title
    end
  
    def test_expected_title
      actual_title = @vinyl.get_track(9)
      expected_title = "NY Excuse"
      assert_equal actual_title.class, expected_title.class
      assert_equal actual_title, expected_title
  
    end
  
    def vinyl
      @vinyl
    end
  end
