require "spec_helper"

describe CardFontAlignmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/card_font_alignments").should route_to("card_font_alignments#index")
    end

    it "routes to #new" do
      get("/card_font_alignments/new").should route_to("card_font_alignments#new")
    end

    it "routes to #show" do
      get("/card_font_alignments/1").should route_to("card_font_alignments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/card_font_alignments/1/edit").should route_to("card_font_alignments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/card_font_alignments").should route_to("card_font_alignments#create")
    end

    it "routes to #update" do
      put("/card_font_alignments/1").should route_to("card_font_alignments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/card_font_alignments/1").should route_to("card_font_alignments#destroy", :id => "1")
    end

  end
end
