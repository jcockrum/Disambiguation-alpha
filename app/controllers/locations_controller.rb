class LocationsController < InheritedResources::Base
    respond_to :html, :json
    belongs_to :universe
    
    def show
        @location = Location.find params[:id]
        @partible = @location
        @parts = @partible.parts
        @part = Part.new
    end

    def update
        @location = Location.find(params[:id])
        respond_to do |format|
            if @location.update_attributes(params[:location])
                format.html { redirect_to(@location, :notice => 'Location was successfully updated.') }
                format.json { respond_with_bip(@location) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@location) }
            end
        end
    end

    def destroy
        @location = Location.find params[:id]
        @location.destroy
        flash[:notice] = "Successfully destroyed location."
        redirect_to :back
    end
end
