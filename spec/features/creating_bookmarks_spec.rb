
feature 'Creating Bookmarks' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/create')
    fill_in('url', :with => 'http://www.testbookmark.com')
    fill_in('title', :with => 'Test')
    click_button('Submit')
    expect(page).to have_link('Test', href: 'http://www.testbookmark.com') 
  end
end
