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
      BookmarkList.create('www.url.com')
      expect(BookmarkList.all).to include('www.url.com')
    end
  end
  end
