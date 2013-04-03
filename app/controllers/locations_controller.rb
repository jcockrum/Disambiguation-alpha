class LocationsController < InheritedResources::Base
 	belongs_to :universe
    respond_to :html, :json
    #TODO:  add before_filter for assocation loading
      
    def index
        @universe = Universe.find(params[:universe_id])
        @locations = @universe.locations
        @location = Location.find(params[:location_id]) if params[:location_id]
    end

    def create
	    super do |format|
	      format.html { redirect_to universe_locations_url }
	    end
	end

    def update
        @location = Location.find(params[:id])
        respond_to do |format|
            if @location.update_attributes(params[:location])
                format.html { redirect_to(@location, :notice => 'location was successfully updated.') }
                format.json { respond_with_bip(@location) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@location) }
            end
        end
    end  
end
