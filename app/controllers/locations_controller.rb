class LocationsController < InheritedResources::Base
	belongs_to :universe
    respond_to :html, :json
end
