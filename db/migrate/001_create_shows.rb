class CreateShows < ActiveRecord::Migration[5.2]
    def change
      create_table :products do |t|
        t.string :name
        t.string :network
        t.string :day
        t.integer :rating
   
        t.timestamps
      end
    end
  end