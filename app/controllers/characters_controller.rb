class CharactersController < InheritedResources::Base
	respond_to :html, :json
    belongs_to :universe
   
     def show
        @character = Character.find params[:id]
        @partible = @character
        @parts = @partible.parts
        @part = Part.new 
     end
     
    def update
        @character = Character.find(params[:id])
        respond_to do |format|
            if @character.update_attributes(params[:character])
                format.html { redirect_to(@character, :notice => 'character was successfully updated.') }
                format.json { respond_with_bip(@character) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@character) }
            end
        end
    end
     
    def destroy
        @character = Character.find params[:id]
        @character.destroy
        flash[:notice] = "Successfully destroyed scene."
        redirect_to :back
    end
end
