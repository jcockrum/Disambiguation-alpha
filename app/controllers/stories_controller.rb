class StoriesController < InheritedResources::Base
    respond_to :html, :json
    belongs_to :universe
    
    def show
        @story = Story.find params[:id]
    end

    def new
        @lst_swtch = 0;
        new!
    end

    def edit
        @lst_swtch = 1;
        @story = Story.find params[:id]
        @scenes = Scene.where(:universe_id => @story.universe_id)
        @parts = Part.where(:scene => params[:scene])
    end

    def update
        @story = Story.find(params[:id])
        respond_to do |format|
            if @story.update_attributes(params[:story])
                format.html { redirect_to(@story, :notice => 'story was successfully updated.') }
                format.json { respond_with_bip(@story) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@story) }
            end
        end
    end

    def destroy
        @story = Story.find params[:id]
        @story.destroy
        flash[:notice] = "Successfully destroyed story."
        redirect_to :back
    end
end