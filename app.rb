
require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all # this is saving the data returned by the all method on our bookmark class.
    # this allows us to use the data in the erb.
    erb :bookmarks
  end

  get'/bookmarks/create' do
    erb :create
  end
  # this is setting our route and getting our create page that has the form on it.

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end
  # this is giving the server our parameters (that were given to the url in
# the form) and creating our new bookmark with that data. We then get redirected
# back to the bookmark page - which should show our new bookmark in it

  run! if app_file == $0
end
