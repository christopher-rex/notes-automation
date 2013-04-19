require 'calabash-android/calabash_steps'

Given /^I create a note with title "([^"]*)"$/ do |note_title|
  step %Q{I press view with id "menu_add"}
  step %Q{I wait for the "NoteEditor" screen to appear}
  step %Q{I enter text "#{note_title}" into field with id "note"}
  step %Q{I press view with id "menu_save"}
  step %Q{I wait for the "NotesList" screen to appear}
end

When /^I rename the note "([^"]*)" with a new title "([^"]*)"$/ do |old_title, new_title|
  step %Q{I long press "#{old_title}"}
  step %Q{I wait for "Edit title" to appear}
  step %Q{I press "Edit title"}
  step %Q{I wait for the "TitleEditor" screen to appear}
  step %Q{I clear input field with id "title"}
  step %Q{I enter text "#{new_title}" into field with id "title"}
  step %Q{I press the "OK" button}
end