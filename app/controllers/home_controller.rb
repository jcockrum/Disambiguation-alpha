class HomeController < ApplicationController
  def index
  end
    def index
      @universes = Universe.all
    end
    
    def dashboard
      
   
    end
    
    private


  def current_universe
    universe.find(session[:universe_id])
    rescue ActiveRecord::RecordNotFound
    universe = universe.create
    session[:universe_id] = universe.id
    universe
  end
    
end