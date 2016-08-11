require ('sinatra')
require ('sinatra/contrib/all')
require_relative('./models/album')
require_relative('./models/artist')
require ('pry-byebug')



get "/artists" do
  @output = Artist.all
  erb(:index_artist)
end

get "/artists/new" do
  erb(:new_artist)
end

post "/artists" do
  @output = Artist.new(params)
  @output.save
  erb(:create_artist)
end

get "/artists/:id" do
  @output = Artist.find(params['id'])
  erb(:show_artist)
end



get "/albums" do
  @output = Album.all
  erb(:index_album)
end

get "/albums/new" do
  erb(:new_album)
end

post "/albums" do
  @output = Album.new(params)
  @output.save
  erb(:create_album)
end

get "/albums/:id" do
  @output = Album.find(params['id'])
  erb(:show_album)
end
