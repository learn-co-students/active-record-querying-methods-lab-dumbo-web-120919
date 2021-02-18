class Show < ActiveRecord::Base 

    def self.highest_rating
        Show.maximum("rating")
    end

    def self.most_popular_show
        highest_rating = self.highest_rating
        most_popular = self.find_by(rating: highest_rating)
        most_popular 
    end

    def self.lowest_rating
        Show.minimum("rating")
    end

    def self.least_popular_show
        lowest_rating = self.lowest_rating
        least_popular = self.find_by(rating: lowest_rating)
        least_popular 
    end

    def self.ratings_sum
        self.sum("rating")
    end

    def self.popular_shows
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        self.order(name: :asc)
    end

end