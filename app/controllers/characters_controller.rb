class CharactersController < InheritedResources::Base
    belongs_to :universe
    respond_to :html, :json

	actions :new, :destroy

    def index
        @universe = Universe.find(params[:universe_id])
        @characters = @universe.characters
        @character = Character.find(params[:character_id]) if params[:character_id]
    end

    def create
	    super do |format|
	      format.html { redirect_to universe_characters_url }
	    end
	end

    def update
        @character = Character.find params[:id]
        respond_to do |format|
            if @character.update_attributes(params[:character])
                format.html { redirect_to(universe_characters_url , :notice => 'character was successfully updated.') }
                format.json { respond_with_bip(@character) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@character) }
            end
        end
    end

end
