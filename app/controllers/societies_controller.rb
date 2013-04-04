class SocietiesController < InheritedResources::Base
	respond_to :html, :json
#FIXME: saving new record on page refresh
     def index
        @event = Event.find(params[:event_id])
        @societies = @event.societies
    end

    def new
		@event = Event.find(params[:event_id])
		@society = @event.society.build
    end

    def create
        @event = Event.find(params[:event_id])
	    @society = @event.societies.build(params[:society])
	    if @society.save
	      flash[:notice] = "Successfully created society."
	      redirect_to event_societies_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @society = Society.find params[:id]
        respond_to do |format|
            if @society.update_attributes(params[:society])
                format.html { redirect_to(event_societies_url, :notice => 'society was successfully updated.') }
                format.json { respond_with_bip(@society) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@society) }
            end
        end
   end

    def destroy
	    @society = Society.find(params[:id])
	    @society.destroy
	    flash[:notice] = "Successfully destroyed society."
	    redirect_to :back
	end
end
