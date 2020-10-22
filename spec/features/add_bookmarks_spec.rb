feature 'add a bookmark to bookmark manager' do
  scenario 'see the bookmark displayed in /bookmarks' do
    visit('/')
    fill_in(:url, with: 'www.url.com')
    click_button('Submit')
    expect(page).to have_content('www.url.com')
  end
end