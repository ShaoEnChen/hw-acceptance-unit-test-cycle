Given /the following movies exist/ do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create! movie
    end
end

Then /the director of "(.+)" should be "(.+)"/ do |movie_title, expected_director|
    movie = Movie.find_by_title movie_title
    actual_director = movie.director
    if actual_director.respond_to? :should
        actual_director.should == expected_director
    else
        assert_equal expected_director, actual_director
    end
end
