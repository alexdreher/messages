require "spec_helper"

describe Admin::MessagesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admin/messages" }.should route_to(:controller => "admin/messages", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin/messages/new" }.should route_to(:controller => "admin/messages", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin/messages/1" }.should route_to(:controller => "admin/messages", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin/messages/1/edit" }.should route_to(:controller => "admin/messages", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin/messages" }.should route_to(:controller => "admin/messages", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin/messages/1" }.should route_to(:controller => "admin/messages", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin/messages/1" }.should route_to(:controller => "admin/messages", :action => "destroy", :id => "1")
    end

  end
end
