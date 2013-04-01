require "spec_helper"

describe StoryarcsController do
  describe "routing" do

    it "routes to #index" do
      get("/storyarcs").should route_to("storyarcs#index")
    end

    it "routes to #new" do
      get("/storyarcs/new").should route_to("storyarcs#new")
    end

    it "routes to #show" do
      get("/storyarcs/1").should route_to("storyarcs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/storyarcs/1/edit").should route_to("storyarcs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/storyarcs").should route_to("storyarcs#create")
    end

    it "routes to #update" do
      put("/storyarcs/1").should route_to("storyarcs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/storyarcs/1").should route_to("storyarcs#destroy", :id => "1")
    end

  end
end
