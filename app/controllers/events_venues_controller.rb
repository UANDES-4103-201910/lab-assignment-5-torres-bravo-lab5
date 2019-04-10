class EventsVenuesController < ApplicationController
	def new
	  @event_venue = EventVenue.new
	  render json: @event_venue
	end
	def create
	 @event_venue = EventVenue.create(event_venue_params)
	 if @event_venue.save 
		redirect_to @event_venue
		render json: @event_venue
	 else
		render json: @event_venue
	 end
 	end

	def destroy
		EventVenue.find(params[:id]).destroy
		render json: @event_venue
	end	
	def update
		@event_venue =EventVenue.update(event_venue_params)
		if @event.save
			redirect_to @event_venue
			render json: @event_venue
		else
			render json: @event_venue
		end
	end
	def show
		@event_event = EventVenue.find(params[:id])
		render json: @event_venue
	end
	def index
		@event_veue = EventVenue.all
		render json: @event_venue
	end
	private
		def event_venue_params
			params.require(:event_venue).permit(:name, :address, :capacity)
		end 
end
