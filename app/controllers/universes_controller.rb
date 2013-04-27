class UniversesController < InheritedResources::Base
    respond_to :html, :json
    
    def index
      session[:universe_id] = nil
      @universes = Universe.where(:user_id => current_user.id)
      @recent_universes = Universe.recent_universes.author(current_user.id)
    end
    
    def new
        @universes = Universe.all #for navmenu
        new!
    end
    
    def show
        @universe = Universe.find params[:id]
        session[:universe_id] = @universe.id
        @partible = @universe
        @parts = @partible.parts
        @part = Part.new        
    end
    
      def create
        @universe = Universe.new(params[:universe])
        @universe.user_id = current_user.id
        if @universe.save
          redirect_to @universe, notice: "Successfully created universe."
        else
          render :new
        end
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


end
