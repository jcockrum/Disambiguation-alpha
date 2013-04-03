class StoryarcsController < InheritedResources::Base
	respond_to :html, :json
	
     def index
        @universe = Universe.find(params[:universe_id])
        @storyarcs = @universe.storyarcs
    end

    def new
		@universe = Universe.find(params[:universe_id])
		@storyarc = @universe.storyarc.build
    end

    def create
        @universe = Universe.find(params[:universe_id])
	    @storyarc = @universe.storyarcs.build(params[:storyarc])
	    if @storyarc.save
	      flash[:notice] = "Successfully created storyarc."
	      redirect_to universe_storyarcs_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @storyarc = Storyarc.find params[:id]
        respond_to do |format|
            if @storyarc.update_attributes(params[:storyarc])
                format.html { redirect_to(universe_storyarcs_url , :notice => 'storyarc was successfully updated.') }
                format.json { respond_with_bip(@storyarc) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@storyarc) }
            end
        end
   end

    def destroy
	    @storyarc = Storyarc.find(params[:id])
	    @storyarc.destroy
	    flash[:notice] = "Successfully destroyed storyarc."
	    redirect_to :back
	end
end