
require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    "Bookmark"
  end

  run! if app_file == $0
end
