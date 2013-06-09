require "spec_helper"

describe TextPositionsController do
  describe "routing" do

    it "routes to #index" do
      get("/text_positions").should route_to("text_positions#index")
    end

    it "routes to #new" do
      get("/text_positions/new").should route_to("text_positions#new")
    end

    it "routes to #show" do
      get("/text_positions/1").should route_to("text_positions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/text_positions/1/edit").should route_to("text_positions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/text_positions").should route_to("text_positions#create")
    end

    it "routes to #update" do
      put("/text_positions/1").should route_to("text_positions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/text_positions/1").should route_to("text_positions#destroy", :id => "1")
    end

  end
end
