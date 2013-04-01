class StoriesController < InheritedResources::Base
	belongs_to :storyarc
    respond_to :html, :json
    
    def index
        @storyarc = Storyarc.find(params[:storyarc_id])
        @stories = @storyarc.stories
        @story = Stories.find(params[:story_id]) if params[:story_id]
    end
    
end
