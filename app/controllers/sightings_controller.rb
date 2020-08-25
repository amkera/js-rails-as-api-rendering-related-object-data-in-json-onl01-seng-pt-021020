class SightingsController < ApplicationController
  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting, include: [:bird, :location]
  end
  
  def index 
    sightings = Sighting.all
    render json: sightings, include: [:bird, :location]
  end 
 
 #same as: render json: sightings.to_json(include: [:bird, :location])
end
