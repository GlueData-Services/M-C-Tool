require "rails_helper"

RSpec.describe SourceLookupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/source_lookups").to route_to("source_lookups#index")
    end

    it "routes to #new" do
      expect(get: "/source_lookups/new").to route_to("source_lookups#new")
    end

    it "routes to #show" do
      expect(get: "/source_lookups/1").to route_to("source_lookups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/source_lookups/1/edit").to route_to("source_lookups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/source_lookups").to route_to("source_lookups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/source_lookups/1").to route_to("source_lookups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/source_lookups/1").to route_to("source_lookups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/source_lookups/1").to route_to("source_lookups#destroy", id: "1")
    end
  end
end
