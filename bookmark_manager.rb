require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = BookmarkList.all
    erb :bookmarks
  end

  post '/bookmark_new' do
    BookmarkList.create(params[:url], params[:title])
    redirect to('/bookmarks')
  end

  run! if app_file == $PROGRAM_NAME
end
