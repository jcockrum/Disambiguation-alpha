class EventsController < InheritedResources::Base
	respond_to :html, :json

     def index
        @location = Location.find(params[:location_id])
        @events = @location.events
    end

    def new
		@location = Location.find(params[:location_id])
		@event = @location.event.build
    end

    def create
        @location = Location.find(params[:location_id])
	    @event = @location.events.build(params[:event])
	    if @event.save
	      flash[:notice] = "Successfully created event."
	      redirect_to location_events_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @event = Event.find params[:id]
        respond_to do |format|
            if @event.update_attributes(params[:event])
                format.html { redirect_to(location_events_url , :notice => 'event was successfully updated.') }
                format.json { respond_with_bip(@event) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@event) }
            end
        end
   end

    def destroy
	    @event = Event.find(params[:id])
	    @event.destroy
	    flash[:notice] = "Successfully destroyed event."
	    redirect_to :back
	end

end
