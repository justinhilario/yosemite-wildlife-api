class SightingsController < ApplicationController
    def index
        sightings = Sighting.where(date: params[:start_date].. params[:end_date])
        render json: sightings
      end
    ## sightings?start_date=2021-03-18 18:09:03.484434000 +0000
    def show
        sighting = Sighting.find(params[:id])
        render json: sighting
    end

    def create
		sightings = Sighting.create(sighting_params)
		if sightings.valid?
			render json: sightings
		else
			render json: sightings.errors
        end
	end

    def update
		sighting = Sighting.find(params[:id])
		sighting.update(sighting_params)
		if sighting.valid?
			render json: sighting
		else
			render json: sighting.errors
        end
		sighting.update!(sighting_attributes)
	end

    def destroy
		sighting = Sighting.find(params[:id])
		if sighting.destroy
			render json: sighting
		else
			 render json: sighting.errors
		end
	end

    private
	def sighting_params
		params.require(:sighting).permit(:animal_id, :date, :latitude, :longitude, :start_date, :end_date)
	end
end
