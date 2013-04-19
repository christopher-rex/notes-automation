Feature: Notepad feature

  Scenario: Create a note with a title
    When I create a note with title "My fav books"
    Then I wait for the "NotesList" screen to appear
    And I see "My fav books"

  Scenario: Rename note
    Given I create a note with title "My fav books"
    When I rename the note "My fav books" with a new title "My fav comics"
    And I wait for the "NotesList" screen to appear
    And I see "My fav comics"
