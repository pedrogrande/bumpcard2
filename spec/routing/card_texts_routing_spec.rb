require "spec_helper"

describe CardTextsController do
  describe "routing" do

    it "routes to #index" do
      get("/card_texts").should route_to("card_texts#index")
    end

    it "routes to #new" do
      get("/card_texts/new").should route_to("card_texts#new")
    end

    it "routes to #show" do
      get("/card_texts/1").should route_to("card_texts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/card_texts/1/edit").should route_to("card_texts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/card_texts").should route_to("card_texts#create")
    end

    it "routes to #update" do
      put("/card_texts/1").should route_to("card_texts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/card_texts/1").should route_to("card_texts#destroy", :id => "1")
    end

  end
end
