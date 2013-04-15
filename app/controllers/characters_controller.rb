class CharactersController < InheritedResources::Base
    respond_to :html, :json
    belongs_to :scene
        
     def show
        @character = Character.find params[:id]
        @partible = @character
        @parts = @partible.parts
        @part = Part.new
    end
    
    def destroy
    	@character = Character.find params[:id]
        @character.destroy
	    flash[:notice] = "Successfully destroyed scene."
	    redirect_to :back
    end
end
