
class Vinyl
    def initialize(artist, album, tracklist)
        @artist = artist
        @album = album
        @tracklist = tracklist
    end
    def read_artist
        @artist
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

# .chars.shuffle.join

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


vinyl_collection = VinylCollection.new([
    Vinyl.new("Prince and the Revolution", "1999", 
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
            "International Lover"]),
    
    Vinyl.new(
            "Soulwax", "Any Minute Now", 
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
            "Dance 2 Slow"
        ])
])

## Common test SETUP

### TEST 1 GOES HERE
puts "TEST 1"
name = "Soulwax"
vinyl = vinyl_collection.artist_lookup(name)

original_title = vinyl.read_artist
vinyl.shuff_artist
new_title = vinyl.read_artist

if new_title.class == original_title.class && new_title != original_title
    puts "program is correct"
else
    puts "ERROR: titles should have been different"
    puts "original title: #{original_title.inspect}"
    puts "new title: #{new_title.inspect}"
end

### TEST 2 GOES HERE
puts "TEST 2"
# name = "Soulwax"
# vinyl = vinyl_collection.artist_lookup(name)

original_title = vinyl.read_artist
new_title = vinyl.read_artist

if new_title.class == original_title.class && new_title == original_title
    puts "program is correct"
else
    puts "ERROR: titles should have been the same"
    puts "original title: #{original_title.inspect}"
    puts "new title: #{new_title.inspect}"
end

### TEST 3 GOES HERE
puts "TEST 3"
# name = "Soulwax"
# vinyl = vinyl_collection.artist_lookup(name)

actual_title = vinyl.get_track(9)
expected_title = "NY Excuse"

if actual_title.class == expected_title.class && actual_title == expected_title
    puts "program is correct"
else
    puts "ERROR: returned title doesn't match expectation"
    puts "actual_title: #{actual_title.inspect}"
    puts "expected_title: #{expected_title.inspect}"
end