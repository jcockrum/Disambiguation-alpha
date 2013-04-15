class LocationsController < InheritedResources::Base
    respond_to :html, :json
    belongs_to :scene
        
 
end
