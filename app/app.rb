require 'sinatra/base'
require './lib/bookmark'
require 'uri'
require 'sinatra/flash'
require './database_connection_setup'


# this is the controller class
class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    # p ENV
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    flash[:notice] = "You must submit a valid URL." unless Bookmark.create(url: params['url'], title: params[:title])
    redirect('/bookmarks')
  end
  
  # post '/bookmarks' do
  #   Bookmark.create(url: params['url'])
  #   redirect '/bookmarks'
  # end
  
  run! if app_file == $0
end
