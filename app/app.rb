require 'sinatra/base'
require './lib/bookmark'

# this is the controller class
class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end
  run! if app_file == $0
end
