describe BookmarkList do
  describe '#all' do
    it 'displays lists bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

      bookmarks = BookmarkList.all
      expect(bookmarks).to include('http://www.google.com')
      end
    end

  describe '#create' do
    it 'adds a bookmark to bookmarklist.all' do
      bookmark = BookmarkList.create('www.url.com', 'URL').first
      expect(bookmark['url']).to eq 'www.url.com'
      expect(bookmark['title']).to eq 'URL'
    end
  end
end
