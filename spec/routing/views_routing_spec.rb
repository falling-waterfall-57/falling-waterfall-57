require "spec_helper"

describe ViewsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/views" }.should route_to(:controller => "views", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/views/new" }.should route_to(:controller => "views", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/views/1" }.should route_to(:controller => "views", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/views/1/edit" }.should route_to(:controller => "views", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/views" }.should route_to(:controller => "views", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/views/1" }.should route_to(:controller => "views", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/views/1" }.should route_to(:controller => "views", :action => "destroy", :id => "1")
    end

  end
end
