class StoriesController < InheritedResources::Base
	respond_to :html, :json

     def index
        @storyarc = Storyarc.find(params[:storyarc_id])
        @stories = @storyarc.stories
    end

    def new
		@storyarc = Storyarc.find(params[:storyarc_id])
		@story = @storyarc.story.build
    end

    def create
        @storyarc = Storyarc.find(params[:storyarc_id])
	    @story = @storyarc.stories.build(params[:story])
	    if @story.save
	      flash[:notice] = "Successfully created Story."
	      redirect_to storyarc_stories_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @story = Story.find params[:id]
        respond_to do |format|
            if @story.update_attributes(params[:story])
                format.html { redirect_to(storyarc_stories_url , :notice => 'Story was successfully updated.') }
                format.json { respond_with_bip(@story) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@story) }
            end
        end
   end

    def destroy
	    @story = Story.find(params[:id])
	    @story.destroy
	    flash[:notice] = "Successfully destroyed Story."
	    redirect_to :back
	end

end
