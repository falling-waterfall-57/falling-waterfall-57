require "spec_helper"

describe ViewsEmailsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/views_emails" }.should route_to(:controller => "views_emails", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/views_emails/new" }.should route_to(:controller => "views_emails", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/views_emails/1" }.should route_to(:controller => "views_emails", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/views_emails/1/edit" }.should route_to(:controller => "views_emails", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/views_emails" }.should route_to(:controller => "views_emails", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/views_emails/1" }.should route_to(:controller => "views_emails", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/views_emails/1" }.should route_to(:controller => "views_emails", :action => "destroy", :id => "1")
    end

  end
end
