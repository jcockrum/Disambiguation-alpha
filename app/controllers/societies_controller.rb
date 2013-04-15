class SocietiesController < InheritedResources::Base
	respond_to :html, :json
    belongs_to :location
        
     def show
        @society = Society.find params[:id]
    end
    
    def destroy
    	@society = Society.find params[:id]
        @society.destroy
	    flash[:notice] = "Successfully destroyed scene."
	    redirect_to :back
    end
end
