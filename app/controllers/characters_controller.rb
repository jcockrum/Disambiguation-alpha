class CharactersController < InheritedResources::Base
    respond_to :html, :json
    before_filter :load_sidestack
        
    def index
        @universe = Universe.find(params[:universe_id])
        @characters = @universe.characters
    end

    def show
        @character = Character.find params[:id]
        @partible = @character
        @parts = @partible.parts
        @part = Part.new
    end

    def new
        @universe = Universe.find(params[:universe_id])
        @character = @universe.character.build
    end

    def create
        @universe = Universe.find(params[:universe_id])
        @character = @universe.characters.build(params[:character])
        if @character.save
            flash[:notice] = "Successfully created character."
            redirect_to universe_characters_url
        else
            render :action => 'new'
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

    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        flash[:notice] = "Successfully destroyed character."
        redirect_to :back
    end

private
    def load_sidestack
        @universe = Universe.all
    end
end
