require 'rails_helper'

describe Movie, :type => :model do
    let(:movie) { Movie.create! }
    
    it "is accessible" do
        expect(movie).to eq(Movie.last)
    end
    
    it "has appropriate columns" do
       expect(Movie.column_names).to include("title")
       expect(Movie.column_names).to include("rating")
       expect(Movie.column_names).to include("description")
       expect(Movie.column_names).to include("release_date")
       expect(Movie.column_names).to include("director")
       expect(Movie.column_names).not_to include("some_other_columns")
    end
    
    it "has all_ratings" do
        expect(Movie.all_ratings).to include("G", "PG", "PG-13", "NC-17", "R")
    end
end