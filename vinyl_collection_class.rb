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