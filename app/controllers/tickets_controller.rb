class TicketsController < ApplicationController
	def create
		@ticket = Ticket.create(ticket_params)
		if @ticket.save
			redirect_to @ticket
			render json: @ticket
		else
			render json: @ticket
		end
	end

	def destroy
		Ticket.find(params[:id]).destroy
		render json: @ticket
	end

	def update
		@ticket = Ticket.update(ticket_params)
		if @ticket.save
			redirect_to @ticket
			render json: @ticket
		else
			render json: @ticket
		end
	end

	def index
	  if (params.has_key?(:ticket_type_id))
	  	@tickets = Ticket.where(:ticket_type_id => params[:ticket_type_id])
	  else
	  	@tickets= Ticket.all
	  end 
	  render json: @tickets
	end

	def show
		@ticket = Ticket.find(params[:id])
		render json: @ticket

	end

	private 
	   def ticket_params 
	   	params.require(:ticket).permit(:ticket_type_id , :order_id)
	   end
end
