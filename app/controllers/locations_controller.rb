class LocationsController < InheritedResources::Base
    respond_to :html, :json
    belongs_to :scene
        
     def show
        @location = Location.find params[:id]
        @partible = @location
        @parts = @partible.parts
        @part = Part.new
    end
    
    def destroy
    	@location = Location.find params[:id]
        @location.destroy
	    flash[:notice] = "Successfully destroyed scene."
	    redirect_to :back
    end
end
