feature 'viewing the bookmarks route' do
  scenario 'checks that the web reponse is succesful' do
    visit("/bookmarks")
    expect(page.status_code).to eq(200)
  end

  scenario 'shows bookmarks on page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit("/bookmarks")
    expect(page).to have_content("http://www.makersacademy.com:")
    expect(page).to have_content("http://www.destroyallsoftware.com:")
    expect(page).to have_content("http://www.google.com:")
  end

end
