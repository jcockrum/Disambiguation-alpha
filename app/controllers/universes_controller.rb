class UniversesController < InheritedResources::Base
    respond_to :html, :json
    before_filter :load_sidestack
	#TODO: add width for best in place
	#TODO: change the universe.id to user.name
	#TODO: add logic to not show owner
    #TODO: 'add colab' not programed
    #TODO: add auth to not show this to non author
                 
    def create
        @universe = Universe.new(params[:universe])
        @universe.user_id = current_user.id
        if @universe.save
            redirect_to :back, :notice => "Successfully created universe."
        else
            render :new
        end
    end
    
    def show
        @universe = Universe.find params[:id]
        @partible = @universe
        @parts = @partible.parts
        @part = Part.new
    end

    def update
        @universe = Universe.find(params[:id])
        respond_to do |format|
            if @universe.update_attributes(params[:universe])
                format.html { redirect_to(@universe, :notice => 'universe was successfully updated.') }
                format.json { respond_with_bip(@universe) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@universe) }
            end
        end
    end

    private

    def load_sidestack
        @users = User.all
    end
end
