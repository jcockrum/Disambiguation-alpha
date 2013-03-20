class HomeController < ApplicationController
  def index
  end
    def dashboard
      @universes = Universe.all
    end
    
    
private


  def current_universe
    universe.find(universe[:current_user.id])
    rescue ActiveRecord::RecordNotFound
    universe = universe.create
    universe[:current_user.id] = universe.id
    universe
  end
    
end