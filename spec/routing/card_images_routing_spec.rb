require "spec_helper"

describe CardImagesController do
  describe "routing" do

    it "routes to #index" do
      get("/card_images").should route_to("card_images#index")
    end

    it "routes to #new" do
      get("/card_images/new").should route_to("card_images#new")
    end

    it "routes to #show" do
      get("/card_images/1").should route_to("card_images#show", :id => "1")
    end

    it "routes to #edit" do
      get("/card_images/1/edit").should route_to("card_images#edit", :id => "1")
    end

    it "routes to #create" do
      post("/card_images").should route_to("card_images#create")
    end

    it "routes to #update" do
      put("/card_images/1").should route_to("card_images#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/card_images/1").should route_to("card_images#destroy", :id => "1")
    end

  end
end
