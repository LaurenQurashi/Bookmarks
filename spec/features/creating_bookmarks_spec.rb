
feature 'Creating Bookmarks' do
  scenario 'A user can add to a list of bookmarks' do
    visit('/bookmarks/create')
    fill_in('url', :with => 'http://www.apple.com')
    click_button('Submit')
    expect(page).to have_content "http://www.apple.com"
  end
end
