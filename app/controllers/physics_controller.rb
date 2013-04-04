class PhysicsController < InheritedResources::Base
	respond_to :html, :json
#FIXME: Change relationship to only allow one set of physics at a time(event)	

     def index
        @event = Event.find(params[:event_id])
        @physics = @event.physics
    end

    def new
		@event = Event.find(params[:event_id])
		@physic = @event.physic.build
    end

    def create
        @event = Event.find(params[:event_id])
	    @physic = @event.physics.build(params[:physic])
	    if @physic.save
	      flash[:notice] = "Successfully created physics."
	      redirect_to event_physics_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @physic = Physic.find params[:id]
        respond_to do |format|
            if @physic.update_attributes(params[:physic])
                format.html { redirect_to(event_physics_url, :notice => 'physics was successfully updated.') }
                format.json { respond_with_bip(@physic) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@physic) }
            end
        end
   end

    def destroy
	    @physic = Physic.find(params[:id])
	    @physic.destroy
	    flash[:notice] = "Successfully destroyed physics."
	    redirect_to :back
	end
end
