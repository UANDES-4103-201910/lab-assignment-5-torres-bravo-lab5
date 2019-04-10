class TicketTypesController < ApplicationController
	def new
	  @ticket_type = TicketType.new
	  render json: @ticket_type
	end
	def create
	 @ticket_type = TicketType.create(ticket_type_params)
	 if @ticket_type.save 
		redirect_to @ticket_type
		render json: @ticket_type
	 else
		render json: @ticket_type
	 end
 	end

	def destroy
		TicketType.find(params[:id]).destroy
		render json: @ticket_type
	end	
	def update
		@ticket_type =TicketType.update(ticket_type_params)
		if @ticket_type.save
			redirect_to @ticket_type
			render json: @ticket_type
		else
			render json: @ticket_type
		end
	end
	def show
		@ticket_type = TicketType.find(params[:id])
		render json: @ticket_type
	end
	def index
		@ticket_type = TicketType.all
		render json: @ticket_type
	end
	private
		def ticket_type_params
			params.require(:ticket_type).permit(:event_id, :price, :ticket_zone_id)
		end 
end
