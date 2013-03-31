class CharactersController < InheritedResources::Base
    #before_filter :initialize_character
    belongs_to :universe
    #respond_to :html, :json
    #actions :index, :new, :create, :delete

    def index
        index! @character = Character.find(params[:character_id]) if params[:character_id]
    end

    protected

    def begin_of_association_chain
        @universe
    end
end
