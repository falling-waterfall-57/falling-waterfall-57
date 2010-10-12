require 'spec_helper'

describe ContainersController do

  def mock_container(stubs={})
    @mock_container ||= mock_model(Container, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all containers as @containers" do
      Container.stub(:all) { [mock_container] }
      get :index
      assigns(:containers).should eq([mock_container])
    end
  end

  describe "GET show" do
    it "assigns the requested container as @container" do
      Container.stub(:find).with("37") { mock_container }
      get :show, :id => "37"
      assigns(:container).should be(mock_container)
    end
  end

  describe "GET new" do
    it "assigns a new container as @container" do
      Container.stub(:new) { mock_container }
      get :new
      assigns(:container).should be(mock_container)
    end
  end

  describe "GET edit" do
    it "assigns the requested container as @container" do
      Container.stub(:find).with("37") { mock_container }
      get :edit, :id => "37"
      assigns(:container).should be(mock_container)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created container as @container" do
        Container.stub(:new).with({'these' => 'params'}) { mock_container(:save => true) }
        post :create, :container => {'these' => 'params'}
        assigns(:container).should be(mock_container)
      end

      it "redirects to the created container" do
        Container.stub(:new) { mock_container(:save => true) }
        post :create, :container => {}
        response.should redirect_to(container_url(mock_container))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved container as @container" do
        Container.stub(:new).with({'these' => 'params'}) { mock_container(:save => false) }
        post :create, :container => {'these' => 'params'}
        assigns(:container).should be(mock_container)
      end

      it "re-renders the 'new' template" do
        Container.stub(:new) { mock_container(:save => false) }
        post :create, :container => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested container" do
        Container.should_receive(:find).with("37") { mock_container }
        mock_container.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :container => {'these' => 'params'}
      end

      it "assigns the requested container as @container" do
        Container.stub(:find) { mock_container(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:container).should be(mock_container)
      end

      it "redirects to the container" do
        Container.stub(:find) { mock_container(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(container_url(mock_container))
      end
    end

    describe "with invalid params" do
      it "assigns the container as @container" do
        Container.stub(:find) { mock_container(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:container).should be(mock_container)
      end

      it "re-renders the 'edit' template" do
        Container.stub(:find) { mock_container(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested container" do
      Container.should_receive(:find).with("37") { mock_container }
      mock_container.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the containers list" do
      Container.stub(:find) { mock_container }
      delete :destroy, :id => "1"
      response.should redirect_to(containers_url)
    end
  end

end
