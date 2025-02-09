class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist  
        @@artists << artist  
        @genre = genre
        @@genres << genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq 
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash.include?(genre) 
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end
        end
        return genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist|
            if artist_hash.include?(artist)
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
        return artist_hash
    end











end