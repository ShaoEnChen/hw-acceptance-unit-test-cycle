Feature: create, update, delete and check movies on Rotten Potatoes

  As a movie buff
  So that I can find movies information
  I want to add new movies, update and delete them, and check them on the website

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: add a new movie
  When  I go to the create new movie page
  And   I fill in "Title" with "The Assassin"
  And   I press "Save Changes"
  Then  I should be on the home page
  And   I should see "The Assassin was successfully created."

Scenario: update a movie rating
  Given I am on the details page for "Alien"
  When  I follow "Edit"
  Then  I should be on the edit page for "Alien"
  When  I select "G" from "Rating"
  And   I press "Update Movie Info"
  Then  I should be on the details page for "Alien"
  And   I should see "Alien was successfully updated."

Scenario: delete a movie
  Given I am on the details page for "Alien"
  When  I press "Delete"
  Then  I should be on the home page
  And   I should see "Movie 'Alien' deleted."
