feature 'adding a bookmark' do
  scenario 'adds bookmarks to the /bookmarks page list' do
      visit('/')
      fill_in(:url, with: 'www.URL.com')
      fill_in(:title, with: 'URL')
      click_button('Submit')
      expect(page).to have_link('URL', href: 'www.URL.com')
    end
end

#write test that sees if there is a new bookmark on a page
#make it fail
#make it pass
#refactor/make more relevant
