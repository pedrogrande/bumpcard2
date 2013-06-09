require "spec_helper"

describe CardColorsController do
  describe "routing" do

    it "routes to #index" do
      get("/card_colors").should route_to("card_colors#index")
    end

    it "routes to #new" do
      get("/card_colors/new").should route_to("card_colors#new")
    end

    it "routes to #show" do
      get("/card_colors/1").should route_to("card_colors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/card_colors/1/edit").should route_to("card_colors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/card_colors").should route_to("card_colors#create")
    end

    it "routes to #update" do
      put("/card_colors/1").should route_to("card_colors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/card_colors/1").should route_to("card_colors#destroy", :id => "1")
    end

  end
end
