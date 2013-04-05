class ScenesController < InheritedResources::Base
	respond_to :html, :json

#TODO: add link to @characters
#TODO: add link to @events

     def index
        @story = Story.find(params[:story_id])
        @scenes = @story.scenes
    end

    def new
		@story = Story.find(params[:story_id])
		@scene = @story.scene.build
    end

    def create
        @story = Story.find(params[:story_id])
	    @scene = @story.scenes.build(params[:scene])
	    if @scene.save
	      flash[:notice] = "Successfully created scene."
	      redirect_to story_scenes_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @scene = Scene.find params[:id]
        respond_to do |format|
            if @scene.update_attributes(params[:scene])
                format.html { redirect_to(story_scenes_url , :notice => 'scene was successfully updated.') }
                format.json { respond_with_bip(@scene) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@scene) }
            end
        end
   end

    def destroy
	    @scene = Scene.find(params[:id])
	    @scene.destroy
	    flash[:notice] = "Successfully destroyed scene."
	    redirect_to :back
	end

end
