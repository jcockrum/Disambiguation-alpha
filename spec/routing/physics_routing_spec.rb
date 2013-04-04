require "spec_helper"

describe PhysicsController do
  describe "routing" do

    it "routes to #index" do
      get("/physics").should route_to("physics#index")
    end

    it "routes to #new" do
      get("/physics/new").should route_to("physics#new")
    end

    it "routes to #show" do
      get("/physics/1").should route_to("physics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/physics/1/edit").should route_to("physics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/physics").should route_to("physics#create")
    end

    it "routes to #update" do
      put("/physics/1").should route_to("physics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/physics/1").should route_to("physics#destroy", :id => "1")
    end

  end
end
