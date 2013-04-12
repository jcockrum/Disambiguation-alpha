class EventsController < ApplicationController
 InheritedResources::Base
    respond_to :html, :json
    belongs_to :location
	belongs_to :scene
    
    def create
        create!(:notice => "got it.") { redirect_to :back and return}
    end

    def destroy
        destroy!(:notice => "Deleted") { redirect_to :back and return}
    end
end
