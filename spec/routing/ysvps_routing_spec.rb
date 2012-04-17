require "spec_helper"

describe YsvpsController do
  describe "routing" do

    it "routes to #index" do
      get("/ysvps").should route_to("ysvps#index")
    end

    it "routes to #new" do
      get("/ysvps/new").should route_to("ysvps#new")
    end

    it "routes to #show" do
      get("/ysvps/1").should route_to("ysvps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ysvps/1/edit").should route_to("ysvps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ysvps").should route_to("ysvps#create")
    end

    it "routes to #update" do
      put("/ysvps/1").should route_to("ysvps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ysvps/1").should route_to("ysvps#destroy", :id => "1")
    end

  end
end
