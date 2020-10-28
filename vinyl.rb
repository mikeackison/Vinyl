
class Vinyl
    def initialize(artist, album, tracklist)
        @artist = artist
        @album = album
        @tracklist = tracklist
    end
    def read_artist
        @artist
    end
    def read_album
        @album
    end
    def read_songs
        @tracklist
    end
    def shuff_songs
        @tracklist.sort_by{rand}
    end
    def shuff_artisty 
        @artist.chars.sort_by{rand}.join
        # @artist = @artist.chars.shuffle.join
    end
end

class VinylCollection
    def initialize(collection)
        @collection = collection
    end
    def artist_lookup(name)
        correct_name = nil
        @collection.each do |artist|
            print "Comparing artist "
            print artist.inspect
            print " against name #{name}\n"
            if artist.read_artist == name
                correct_name = artist
                puts "name matched, setting correct_name '#{name}' to current contact"
            end
        end
       correct_name
    end
end


vinyl = VinylCollection.new([
    Vinyl.new("Prince and the Revolution", "1999", 

            ["1999",
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
    
    Vinyl.new("Soulwax", "Any Minute Now", 
    
            ["E Talking",
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
            "Dance 2 Slow"])
])


puts vinyl.inspect
name = "Prince and the Revolution"

puts vinyl.artist_lookup(name).inspect

puts nil

puts vinyl.artist_lookup(name).shuff_songs.inspect

puts vinyl.artist_lookup(name).shuff_artist.inspect


