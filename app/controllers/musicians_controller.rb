class MusiciansController < ApplicationController
    get '/musicians' do
        musicians = Musician.all
        musicians.to_json
    end 
    get '/musicians/:id' do
        musician = Musician.find_by(id: params[:id])
        musician.to_json(include: :bands)
    end

    post '/musicians' do
        musician = Musician.create(
            name: params[:name],
            instrument: params[:instrument],
            city: params[:city],
            years_experience: params[:years_experience]
          )
          musician.to_json
    end

    patch 'musicians/:id' do
        musician = Musician.find(params[:id])
        musician.update(
          retired: params[:retired]
        )
        musician.to_json
    end
    
    delete '/musicians/:id' do
        musician = Musician.find(params[:id])
        musician.destroy
        musician.to_json
    end
end 