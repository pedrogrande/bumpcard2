require 'spec_helper'

describe "TextPositions" do
  describe "GET /text_positions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get text_positions_path
      response.status.should be(200)
    end
  end
end
