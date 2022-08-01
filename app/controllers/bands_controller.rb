class BandsController < ApplicationController
    get '/bands' do 
      bands = Band.all
      bands.to_json(include: :musicians) 
    end

    get '/bands/:id' do
        band = Band.find_by(id: params[:id])
        band.to_json(include: :musicians)
    end
end