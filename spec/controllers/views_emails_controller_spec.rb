require 'spec_helper'

describe ViewsEmailsController do

  def mock_views_email(stubs={})
    @mock_views_email ||= mock_model(ViewsEmail, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all views_emails as @views_emails" do
      ViewsEmail.stub(:all) { [mock_views_email] }
      get :index
      assigns(:views_emails).should eq([mock_views_email])
    end
  end

  describe "GET show" do
    it "assigns the requested views_email as @views_email" do
      ViewsEmail.stub(:find).with("37") { mock_views_email }
      get :show, :id => "37"
      assigns(:views_email).should be(mock_views_email)
    end
  end

  describe "GET new" do
    it "assigns a new views_email as @views_email" do
      ViewsEmail.stub(:new) { mock_views_email }
      get :new
      assigns(:views_email).should be(mock_views_email)
    end
  end

  describe "GET edit" do
    it "assigns the requested views_email as @views_email" do
      ViewsEmail.stub(:find).with("37") { mock_views_email }
      get :edit, :id => "37"
      assigns(:views_email).should be(mock_views_email)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created views_email as @views_email" do
        ViewsEmail.stub(:new).with({'these' => 'params'}) { mock_views_email(:save => true) }
        post :create, :views_email => {'these' => 'params'}
        assigns(:views_email).should be(mock_views_email)
      end

      it "redirects to the created views_email" do
        ViewsEmail.stub(:new) { mock_views_email(:save => true) }
        post :create, :views_email => {}
        response.should redirect_to(views_email_url(mock_views_email))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved views_email as @views_email" do
        ViewsEmail.stub(:new).with({'these' => 'params'}) { mock_views_email(:save => false) }
        post :create, :views_email => {'these' => 'params'}
        assigns(:views_email).should be(mock_views_email)
      end

      it "re-renders the 'new' template" do
        ViewsEmail.stub(:new) { mock_views_email(:save => false) }
        post :create, :views_email => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested views_email" do
        ViewsEmail.should_receive(:find).with("37") { mock_views_email }
        mock_views_email.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :views_email => {'these' => 'params'}
      end

      it "assigns the requested views_email as @views_email" do
        ViewsEmail.stub(:find) { mock_views_email(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:views_email).should be(mock_views_email)
      end

      it "redirects to the views_email" do
        ViewsEmail.stub(:find) { mock_views_email(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(views_email_url(mock_views_email))
      end
    end

    describe "with invalid params" do
      it "assigns the views_email as @views_email" do
        ViewsEmail.stub(:find) { mock_views_email(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:views_email).should be(mock_views_email)
      end

      it "re-renders the 'edit' template" do
        ViewsEmail.stub(:find) { mock_views_email(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested views_email" do
      ViewsEmail.should_receive(:find).with("37") { mock_views_email }
      mock_views_email.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the views_emails list" do
      ViewsEmail.stub(:find) { mock_views_email }
      delete :destroy, :id => "1"
      response.should redirect_to(views_emails_url)
    end
  end

end
