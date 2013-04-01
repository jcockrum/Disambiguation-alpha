class StoryarcsController < InheritedResources::Base
    belongs_to :universe
    respond_to :html, :json
    #actions :index, :new, :create, :update, :destroy
    def index
        @universe = Universe.find(params[:universe_id])
        @storyarcs = @universe.storyarcs
        @storyarc = Storyarc.find(params[:storyarc_id]) if params[:storyarc_id]
    end

    def create
        super do |format|
            format.html { redirect_to universe_storyarcs_url }
        end
    end

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
end
