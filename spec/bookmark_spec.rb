require 'bookmark.rb'

describe Bookmark do

  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create' do
    it 'adds a bookmark to the bookmark manager' do
      Bookmark.create('www.url.com')
      expect(Bookmark.all).to include('www.url.com')
    end
  end

end
