require "rails_helper"

RSpec.describe BlogEntriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/blog_entries").to route_to("blog_entries#index")
    end

    it "routes to #new" do
      expect(get: "/blog_entries/new").to route_to("blog_entries#new")
    end

    it "routes to #show" do
      expect(get: "/blog_entries/1").to route_to("blog_entries#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/blog_entries/1/edit").to route_to("blog_entries#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/blog_entries").to route_to("blog_entries#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/blog_entries/1").to route_to("blog_entries#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/blog_entries/1").to route_to("blog_entries#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/blog_entries/1").to route_to("blog_entries#destroy", id: "1")
    end
  end
end
