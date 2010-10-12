require "spec_helper"

describe DataTagsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/data_tags" }.should route_to(:controller => "data_tags", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/data_tags/new" }.should route_to(:controller => "data_tags", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/data_tags/1" }.should route_to(:controller => "data_tags", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/data_tags/1/edit" }.should route_to(:controller => "data_tags", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/data_tags" }.should route_to(:controller => "data_tags", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/data_tags/1" }.should route_to(:controller => "data_tags", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/data_tags/1" }.should route_to(:controller => "data_tags", :action => "destroy", :id => "1")
    end

  end
end
