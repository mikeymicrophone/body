require "spec_helper"

describe YogasController do
  describe "routing" do

    it "routes to #index" do
      get("/yogas").should route_to("yogas#index")
    end

    it "routes to #new" do
      get("/yogas/new").should route_to("yogas#new")
    end

    it "routes to #show" do
      get("/yogas/1").should route_to("yogas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/yogas/1/edit").should route_to("yogas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/yogas").should route_to("yogas#create")
    end

    it "routes to #update" do
      put("/yogas/1").should route_to("yogas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/yogas/1").should route_to("yogas#destroy", :id => "1")
    end

  end
end
