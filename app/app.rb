require 'sinatra/base'

# this is the controller class
class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do 
    'List of Bookmarks'
  end
  run! if app_file == $0
end
