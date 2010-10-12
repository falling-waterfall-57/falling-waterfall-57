require 'spec_helper'

describe DataGroupsController do

  def mock_data_group(stubs={})
    @mock_data_group ||= mock_model(DataGroup, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all data_groups as @data_groups" do
      DataGroup.stub(:all) { [mock_data_group] }
      get :index
      assigns(:data_groups).should eq([mock_data_group])
    end
  end

  describe "GET show" do
    it "assigns the requested data_group as @data_group" do
      DataGroup.stub(:find).with("37") { mock_data_group }
      get :show, :id => "37"
      assigns(:data_group).should be(mock_data_group)
    end
  end

  describe "GET new" do
    it "assigns a new data_group as @data_group" do
      DataGroup.stub(:new) { mock_data_group }
      get :new
      assigns(:data_group).should be(mock_data_group)
    end
  end

  describe "GET edit" do
    it "assigns the requested data_group as @data_group" do
      DataGroup.stub(:find).with("37") { mock_data_group }
      get :edit, :id => "37"
      assigns(:data_group).should be(mock_data_group)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created data_group as @data_group" do
        DataGroup.stub(:new).with({'these' => 'params'}) { mock_data_group(:save => true) }
        post :create, :data_group => {'these' => 'params'}
        assigns(:data_group).should be(mock_data_group)
      end

      it "redirects to the created data_group" do
        DataGroup.stub(:new) { mock_data_group(:save => true) }
        post :create, :data_group => {}
        response.should redirect_to(data_group_url(mock_data_group))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved data_group as @data_group" do
        DataGroup.stub(:new).with({'these' => 'params'}) { mock_data_group(:save => false) }
        post :create, :data_group => {'these' => 'params'}
        assigns(:data_group).should be(mock_data_group)
      end

      it "re-renders the 'new' template" do
        DataGroup.stub(:new) { mock_data_group(:save => false) }
        post :create, :data_group => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested data_group" do
        DataGroup.should_receive(:find).with("37") { mock_data_group }
        mock_data_group.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :data_group => {'these' => 'params'}
      end

      it "assigns the requested data_group as @data_group" do
        DataGroup.stub(:find) { mock_data_group(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:data_group).should be(mock_data_group)
      end

      it "redirects to the data_group" do
        DataGroup.stub(:find) { mock_data_group(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(data_group_url(mock_data_group))
      end
    end

    describe "with invalid params" do
      it "assigns the data_group as @data_group" do
        DataGroup.stub(:find) { mock_data_group(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:data_group).should be(mock_data_group)
      end

      it "re-renders the 'edit' template" do
        DataGroup.stub(:find) { mock_data_group(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested data_group" do
      DataGroup.should_receive(:find).with("37") { mock_data_group }
      mock_data_group.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the data_groups list" do
      DataGroup.stub(:find) { mock_data_group }
      delete :destroy, :id => "1"
      response.should redirect_to(data_groups_url)
    end
  end

end
