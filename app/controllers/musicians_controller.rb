require 'pry'
class MusiciansController < ApplicationController
    get '/musicians' do
        musicians = Musician.all
        musicians.to_json
    end 

    post '/musicians' do
        musician = Musician.create(
            name: params[:name],
            instrument: params[:instrument],
            city: params[:city],
            years_experience: params[:years_experience],
            hired: params[:hired],
            fired: params[:fired]
          )
          musician.to_json
    end

    patch '/musicians/:id' do
        musician = Musician.find(params[:id])
        musician.update(
          hired: params[:hired]
        )
        musician.to_json
    end
    
    delete '/musicians/:id' do
        musician = Musician.find(params[:id])
        musician.destroy
    end
end 