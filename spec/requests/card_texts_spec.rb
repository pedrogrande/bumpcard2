require 'spec_helper'

describe "CardTexts" do
  describe "GET /card_texts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get card_texts_path
      response.status.should be(200)
    end
  end
end
