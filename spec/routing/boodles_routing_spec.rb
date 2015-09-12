require "rails_helper"

RSpec.describe BoodlesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/boodles").to route_to("boodles#index")
    end

    it "routes to #new" do
      expect(:get => "/boodles/new").to route_to("boodles#new")
    end

    it "routes to #show" do
      expect(:get => "/boodles/1").to route_to("boodles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/boodles/1/edit").to route_to("boodles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/boodles").to route_to("boodles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/boodles/1").to route_to("boodles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/boodles/1").to route_to("boodles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/boodles/1").to route_to("boodles#destroy", :id => "1")
    end

  end
end
