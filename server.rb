require 'sinatra'

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'cycling', 'techno', 'film']
  erb :about_me
end

get '/favourites' do
  @fav_links = ['http://www.imdb.com', 'http://www.nytimes.com']
  erb :fav_links
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end
