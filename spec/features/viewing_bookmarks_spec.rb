
# feature 'Viewing bookmarks' do # what we're aiming to test
#   scenario 'visiting the index page' do # the context which we are testing
#     visit('/') # specifies which page it should go to.
#     expect(page).to have_content "Bookmark Manager" # expectation of the test.
#   end
# end


feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
