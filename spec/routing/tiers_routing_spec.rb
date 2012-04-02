require "spec_helper"

describe TiersController do
  describe "routing" do

    it "routes to #index" do
      get("/tiers").should route_to("tiers#index")
    end

    it "routes to #new" do
      get("/tiers/new").should route_to("tiers#new")
    end

    it "routes to #show" do
      get("/tiers/1").should route_to("tiers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tiers/1/edit").should route_to("tiers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tiers").should route_to("tiers#create")
    end

    it "routes to #update" do
      put("/tiers/1").should route_to("tiers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tiers/1").should route_to("tiers#destroy", :id => "1")
    end

  end
end
