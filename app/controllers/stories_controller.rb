class StoriesController < InheritedResources::Base
	belongs_to :storyarc
    respond_to :html, :json
    before_filter :access_externals
    
    def index
        @story = @storyarc.comments
        @story = Story.find(params[:story_id]) if params[:story_id]
    end
    
private
    def access_externals
      @universe = Universe.find(params[:universe_id])
      @storyarc = Storyarc.find(params[:storyarc_id])
    end
end
