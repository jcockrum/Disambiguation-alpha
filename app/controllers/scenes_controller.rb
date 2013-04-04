class ScenesController < InheritedResources::Base
	respond_to :html, :json

#TODO: add link to @characters
#TODO: add link to @events

     def index
        @storyarc = Storyarc.find(params[:storyarc_id])
        @scenes = @storyarc.scenes
    end

    def new
		@storyarc = Storyarc.find(params[:storyarc_id])
		@scene = @storyarc.scene.build
    end

    def create
        @storyarc = Storyarc.find(params[:storyarc_id])
	    @scene = @storyarc.scenes.build(params[:scene])
	    if @scene.save
	      flash[:notice] = "Successfully created scene."
	      redirect_to storyarc_scenes_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @scene = Scene.find params[:id]
        respond_to do |format|
            if @scene.update_attributes(params[:scene])
                format.html { redirect_to(storyarc_scenes_url , :notice => 'scene was successfully updated.') }
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
