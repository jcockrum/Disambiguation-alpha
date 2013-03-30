class CharactersController < InheritedResources::Base
    before_filter :initialize_character
    belongs_to :universe
    respond_to :html, :json
    actions :index, :show, :new, :delete
    


end
