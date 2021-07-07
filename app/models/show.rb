class Show < ActiveRecord::Base
    #returns rating of top rated show
    def self.highest_rating
        Show.maximum(:rating)
    end
    #returns most popular show
    def self.most_popular_show
        Show.find_by rating: Show.highest_rating
    end
    #returns rating of lowest rated show
    def self.lowest_rating
        Show.minimum(:rating)
    end
    #returns show with lowest rating
    def self.least_popular_show
        Show.find_by rating: Show.lowest_rating
    end
    #returns sum of all show ratings
    def self.ratings_sum
        Show.sum(:rating)
    end
    #returns all shows with rating above 5
    def self.popular_shows
        Show.where("rating > ?", 5)
    end
    #returns array of shows in alphabetical order
    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end