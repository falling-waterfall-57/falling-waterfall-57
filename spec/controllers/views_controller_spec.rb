require 'spec_helper'

describe ViewsController do

  def mock_view(stubs={})
    @mock_view ||= mock_model(View, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all views as @views" do
      View.stub(:all) { [mock_view] }
      get :index
      assigns(:views).should eq([mock_view])
    end
  end

  describe "GET show" do
    it "assigns the requested view as @view" do
      View.stub(:find).with("37") { mock_view }
      get :show, :id => "37"
      assigns(:view).should be(mock_view)
    end
  end

  describe "GET new" do
    it "assigns a new view as @view" do
      View.stub(:new) { mock_view }
      get :new
      assigns(:view).should be(mock_view)
    end
  end

  describe "GET edit" do
    it "assigns the requested view as @view" do
      View.stub(:find).with("37") { mock_view }
      get :edit, :id => "37"
      assigns(:view).should be(mock_view)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created view as @view" do
        View.stub(:new).with({'these' => 'params'}) { mock_view(:save => true) }
        post :create, :view => {'these' => 'params'}
        assigns(:view).should be(mock_view)
      end

      it "redirects to the created view" do
        View.stub(:new) { mock_view(:save => true) }
        post :create, :view => {}
        response.should redirect_to(view_url(mock_view))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved view as @view" do
        View.stub(:new).with({'these' => 'params'}) { mock_view(:save => false) }
        post :create, :view => {'these' => 'params'}
        assigns(:view).should be(mock_view)
      end

      it "re-renders the 'new' template" do
        View.stub(:new) { mock_view(:save => false) }
        post :create, :view => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested view" do
        View.should_receive(:find).with("37") { mock_view }
        mock_view.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :view => {'these' => 'params'}
      end

      it "assigns the requested view as @view" do
        View.stub(:find) { mock_view(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:view).should be(mock_view)
      end

      it "redirects to the view" do
        View.stub(:find) { mock_view(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(view_url(mock_view))
      end
    end

    describe "with invalid params" do
      it "assigns the view as @view" do
        View.stub(:find) { mock_view(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:view).should be(mock_view)
      end

      it "re-renders the 'edit' template" do
        View.stub(:find) { mock_view(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested view" do
      View.should_receive(:find).with("37") { mock_view }
      mock_view.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the views list" do
      View.stub(:find) { mock_view }
      delete :destroy, :id => "1"
      response.should redirect_to(views_url)
    end
  end

end
