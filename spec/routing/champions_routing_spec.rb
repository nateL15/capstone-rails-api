require "rails_helper"

RSpec.describe ChampionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/champions").to route_to("champions#index")
    end


    it "routes to #show" do
      expect(:get => "/champions/1").to route_to("champions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/champions").to route_to("champions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/champions/1").to route_to("champions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/champions/1").to route_to("champions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/champions/1").to route_to("champions#destroy", :id => "1")
    end

  end
end
