require "spec_helper"

describe ContainersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/containers" }.should route_to(:controller => "containers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/containers/new" }.should route_to(:controller => "containers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/containers/1" }.should route_to(:controller => "containers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/containers/1/edit" }.should route_to(:controller => "containers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/containers" }.should route_to(:controller => "containers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/containers/1" }.should route_to(:controller => "containers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/containers/1" }.should route_to(:controller => "containers", :action => "destroy", :id => "1")
    end

  end
end
