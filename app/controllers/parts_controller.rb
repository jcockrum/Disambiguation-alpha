class PartsController < InheritedResources::Base
	respond_to :html, :json

	belongs_to :character, :location, :storyarc, :polymorphic => true
	
	def create
    	create!(:notice => "got it.") { redirect_to :back and return}
	end
end
