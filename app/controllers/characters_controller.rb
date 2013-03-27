class CharactersController < InheritedResources::Base
    before_filter :initialize_character
    belongs_to :universe
    respond_to :html, :json
    actions :index, :show, :new, :delete
    
    def initialize_character
        @character = Character.new
    end

    def create
        @character = Character.new(params[:character])
        @character.universe_id = current_universe.id
        if @character.save
            redirect_to universe_charcter_path(@universe.Character, @charcter) , :notice => "Successfully created character."
        else
            render :new
        end
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

end
