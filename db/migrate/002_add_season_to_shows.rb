class AddSeasonToShows < ActiveRecord::Migration[5.2]
    def change
        add_column :shows, :season, :string
    end
end

# Now we need to create a second migration to add another column 
# to our shows table. In the db/migrate folder, create 
# another file, 002_add_season_to_shows.rb, and write a migration to 
# add a column, season, to the shows table. The datatype of this column
#  is string.