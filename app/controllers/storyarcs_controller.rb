class StoryarcsController < InheritedResources::Base
    belongs_to :universe
    respond_to :html, :json
    before_filter :access_externals
    #TODO: check that :access_externals does not crash on empty set

	def index
		@storyarcs = @universe.storyarcs		
    	@storyarc = Storyarc.find(params[:storyarc_id]) if params[:storyarc_id]
	end


    def create
        super do |format|
            format.html { redirect_to universe_storyarcs_url }
        end
    end

    #TODO: storyarc is not updateing
    def update
        @storyarc = storyarc.find(params[:id])
        respond_to do |format|
            if @storyarc.update_attributes(params[:storyarc])
                format.html { redirect_to(@storyarc, :notice => 'storyarc was successfully updated.') }
                format.json { respond_with_bip(@storyarc) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@storyarc) }
            end
        end
    end

    private

    def access_externals
        @universe = Universe.find(params[:universe_id])
        @storyarc = Storyarc.find(:first)
    end
end
