require "spec_helper"

describe TextSizesController do
  describe "routing" do

    it "routes to #index" do
      get("/text_sizes").should route_to("text_sizes#index")
    end

    it "routes to #new" do
      get("/text_sizes/new").should route_to("text_sizes#new")
    end

    it "routes to #show" do
      get("/text_sizes/1").should route_to("text_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/text_sizes/1/edit").should route_to("text_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/text_sizes").should route_to("text_sizes#create")
    end

    it "routes to #update" do
      put("/text_sizes/1").should route_to("text_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/text_sizes/1").should route_to("text_sizes#destroy", :id => "1")
    end

  end
end
