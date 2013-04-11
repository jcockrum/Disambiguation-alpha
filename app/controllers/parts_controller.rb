class PartsController < InheritedResources::Base
    respond_to :html, :json
	belongs_to :universe, :polymorphic => true, :optional => true do
    	belongs_to :character, :location, :storyarc, :polymorphic => true, :optional => true 
    end
    
    belongs_to :scene, :polymorphic => true, :optional => true  
    
    def create
        create!(:notice => "got it.") { redirect_to :back and return}
    end

    def destroy
        destroy!(:notice => "Deleted") { redirect_to :back and return}
    end
end
