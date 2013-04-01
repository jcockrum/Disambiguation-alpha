class StoryarcsController < InheritedResources::Base
	belongs_to :universe
    respond_to :html, :json
    #actions :index, :new, :create, :update, :destroy
       

end
