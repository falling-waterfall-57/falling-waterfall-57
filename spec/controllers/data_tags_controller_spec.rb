require 'spec_helper'

describe DataTagsController do

  def mock_data_tag(stubs={})
    @mock_data_tag ||= mock_model(DataTag, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all data_tags as @data_tags" do
      DataTag.stub(:all) { [mock_data_tag] }
      get :index
      assigns(:data_tags).should eq([mock_data_tag])
    end
  end

  describe "GET show" do
    it "assigns the requested data_tag as @data_tag" do
      DataTag.stub(:find).with("37") { mock_data_tag }
      get :show, :id => "37"
      assigns(:data_tag).should be(mock_data_tag)
    end
  end

  describe "GET new" do
    it "assigns a new data_tag as @data_tag" do
      DataTag.stub(:new) { mock_data_tag }
      get :new
      assigns(:data_tag).should be(mock_data_tag)
    end
  end

  describe "GET edit" do
    it "assigns the requested data_tag as @data_tag" do
      DataTag.stub(:find).with("37") { mock_data_tag }
      get :edit, :id => "37"
      assigns(:data_tag).should be(mock_data_tag)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created data_tag as @data_tag" do
        DataTag.stub(:new).with({'these' => 'params'}) { mock_data_tag(:save => true) }
        post :create, :data_tag => {'these' => 'params'}
        assigns(:data_tag).should be(mock_data_tag)
      end

      it "redirects to the created data_tag" do
        DataTag.stub(:new) { mock_data_tag(:save => true) }
        post :create, :data_tag => {}
        response.should redirect_to(data_tag_url(mock_data_tag))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved data_tag as @data_tag" do
        DataTag.stub(:new).with({'these' => 'params'}) { mock_data_tag(:save => false) }
        post :create, :data_tag => {'these' => 'params'}
        assigns(:data_tag).should be(mock_data_tag)
      end

      it "re-renders the 'new' template" do
        DataTag.stub(:new) { mock_data_tag(:save => false) }
        post :create, :data_tag => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested data_tag" do
        DataTag.should_receive(:find).with("37") { mock_data_tag }
        mock_data_tag.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :data_tag => {'these' => 'params'}
      end

      it "assigns the requested data_tag as @data_tag" do
        DataTag.stub(:find) { mock_data_tag(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:data_tag).should be(mock_data_tag)
      end

      it "redirects to the data_tag" do
        DataTag.stub(:find) { mock_data_tag(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(data_tag_url(mock_data_tag))
      end
    end

    describe "with invalid params" do
      it "assigns the data_tag as @data_tag" do
        DataTag.stub(:find) { mock_data_tag(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:data_tag).should be(mock_data_tag)
      end

      it "re-renders the 'edit' template" do
        DataTag.stub(:find) { mock_data_tag(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested data_tag" do
      DataTag.should_receive(:find).with("37") { mock_data_tag }
      mock_data_tag.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the data_tags list" do
      DataTag.stub(:find) { mock_data_tag }
      delete :destroy, :id => "1"
      response.should redirect_to(data_tags_url)
    end
  end

end
