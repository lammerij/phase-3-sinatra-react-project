class BandsController < ApplicationController
    get '/bands' do 
      bands = Band.all
      bands.to_json(include: :musicians) 
    end

    get '/bands/:id' do
        band = Band.find_by(id: params[:id])
        band.to_json(include: :musicians)
    end
    
    post '/bands' do
        band = Band.create(
          name: params[:name],
          genre: params[:genre],
          instrument_needed: params[:instrument_needed]
        )
        band.to_json
    end

end