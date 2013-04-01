require 'spec_helper'

describe "Storyarcs" do
  describe "GET /storyarcs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get storyarcs_path
      response.status.should be(200)
    end
  end
end
