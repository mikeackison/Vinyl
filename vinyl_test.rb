require "minitest/autorun"
require_relative "./vinyl.rb"
require_relative "./vinyl_collection.rb"
# require_relative "./vinyl_class.rb"


class Test < Minitest::Test
  def setup
    @vinyl_collection = VinylCollection.new(
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

  def assert_class_equal(new_title, original_title)
    assert_equal new_title.class, original_title.class
  end

  def test_shuff_artist
    original_title = @vinyl.read_artist
    vinyl.shuff_artist
    new_title = @vinyl.read_artist
    refute_equal original_title, new_title
    assert_class_equal(new_title, original_title)
  end

  def test_new_title
    original_title = @vinyl.read_artist
    new_title = @vinyl.read_artist
    assert_class_equal(new_title, original_title)
    assert_equal new_title, original_title
  end

  def test_expected_title
    actual_title = @vinyl.get_track(9)
    expected_title = "NY Excuse"
    assert_class_equal(actual_title, expected_title)
    assert_equal actual_title, expected_title
  end

  def vinyl
    @vinyl
  end
end