
feature 'Viewing bookmarks' do # what we're aiming to test
  scenario 'visiting the index page' do # the context which we are testing
    visit('/') # specifies which page it should go to.
    expect(page).to have_content "Bookmark Manager" # expectation of the test.
  end
end


feature 'Viewing Saved Bookmarks' do # what we're aiming to test
  scenario 'viewing stored bookmarks' do # the context which we are testing
    visit('/bookmarks') # specifies which page it should go to.
    expect(page).to have_content "Bookmark" # expectation of the test.
  end
end
