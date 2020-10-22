require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Hello World!"
    erb :'bookmarks/add_bookmark'
  end

  post '/add_bookmark' do
    @bookmark = params[:url]
  end

get '/bookmarks' do
  @bookmarks = Bookmark.all
    erb :'bookmarks/index'
end

  run! if app_file == $0
end
