require "spec_helper"

describe RsvpsController do
  describe "routing" do

    it "routes to #index" do
      get("/rsvps").should route_to("rsvps#index")
    end

    it "routes to #new" do
      get("/rsvps/new").should route_to("rsvps#new")
    end

    it "routes to #show" do
      get("/rsvps/1").should route_to("rsvps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rsvps/1/edit").should route_to("rsvps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rsvps").should route_to("rsvps#create")
    end

    it "routes to #update" do
      put("/rsvps/1").should route_to("rsvps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rsvps/1").should route_to("rsvps#destroy", :id => "1")
    end

  end
end
