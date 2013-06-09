require "spec_helper"

describe CardFontFamiliesController do
  describe "routing" do

    it "routes to #index" do
      get("/card_font_families").should route_to("card_font_families#index")
    end

    it "routes to #new" do
      get("/card_font_families/new").should route_to("card_font_families#new")
    end

    it "routes to #show" do
      get("/card_font_families/1").should route_to("card_font_families#show", :id => "1")
    end

    it "routes to #edit" do
      get("/card_font_families/1/edit").should route_to("card_font_families#edit", :id => "1")
    end

    it "routes to #create" do
      post("/card_font_families").should route_to("card_font_families#create")
    end

    it "routes to #update" do
      put("/card_font_families/1").should route_to("card_font_families#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/card_font_families/1").should route_to("card_font_families#destroy", :id => "1")
    end

  end
end
