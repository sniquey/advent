require "rails_helper"

RSpec.describe AdventsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/advents").to route_to("advents#index")
    end

    it "routes to #new" do
      expect(:get => "/advents/new").to route_to("advents#new")
    end

    it "routes to #show" do
      expect(:get => "/advents/1").to route_to("advents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/advents/1/edit").to route_to("advents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/advents").to route_to("advents#create")
    end

    it "routes to #update" do
      expect(:put => "/advents/1").to route_to("advents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/advents/1").to route_to("advents#destroy", :id => "1")
    end

  end
end
