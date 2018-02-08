class EventsController < ApplicationController
  def index
  
  	@events = Event.all

  end

  def new

  	@event = Event.new

  end

  def create
	@event = Event.new(event_params)
	@event.creator = current_user
	  if @event.save 
    	flash[:success] = "Votre événement a été créé"
    	redirect_to @event
	  else 
		render 'new'
	  end
	  # puts @event.errors.messages
  end

  def show

	@event = Event.find(params[:id])

  end

  def edit

  	@event = Event.find(params[:id])

  end

 def update

  	@event = Event.find(params[:id])
    if @event.update(event_params)
      	redirect_to @event
    else
    	render 'edit'
    end
    # puts @event.errors.messages
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
	
	params.require(:event).permit(:date, :description, :place, :creator_id)
  
  end

end

