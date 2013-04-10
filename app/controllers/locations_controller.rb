class LocationsController < InheritedResources::Base
	respond_to :html, :json
	
     def index
        @universe = Universe.find(params[:universe_id])
        @locations = @universe.locations
    end
    
    def show
        @location = Location.find params[:id]
        @partible = @location
        @parts = @partible.parts
        @part = Part.new
    end

    def new
		@universe = Universe.find(params[:universe_id])
		@location = @universe.location.build
    end

    def create
        @universe = Universe.find(params[:universe_id])
	    @location = @universe.locations.build(params[:location])
	    if @location.save
	      flash[:notice] = "Successfully created location."
	      redirect_to universe_locations_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @location = Location.find params[:id]
        respond_to do |format|
            if @location.update_attributes(params[:location])
                format.html { redirect_to(universe_locations_url , :notice => 'location was successfully updated.') }
                format.json { respond_with_bip(@location) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@location) }
            end
        end
   end

    def destroy
	    @location = Location.find(params[:id])
	    @location.destroy
	    flash[:notice] = "Successfully destroyed location."
	    redirect_to :back
	end
end
