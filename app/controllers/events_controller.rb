class EventsController < ApplicationController
	def new
	  @event = Event.new
	  render json: @event
	end
	def create
	 @event = Event.create(event_params)
	 if @event.save 
		redirect_to @event
		render json: @event
	 else
		render json: @event
	 end
 	end
	def index
		@event = Event.all
		render json: @event
	end
	def destroy
		Event.find(params[:id]).destroy
		render json: @event
	end	
	def update
		@event =Event.update(event_params)
		if @event.save
			redirect_to @event
			render json: @event
		else
			render json: @event
		end
	end
	def show
		@event = Event.find(params[:id])
		render json: @event
	end

	def upcoming_events
		@event = Event.where(:start_date => 90.days.from_now) 

	end

	private
		def event_params
			params.require(:event).permit(:name, :description, :start_date, :event_venue_id)
		end 
end
