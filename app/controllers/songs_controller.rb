class SongsController < ApplicationController

# Index action
  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

# Show action
  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :'songs/show'
    binding.pry
  end

end
