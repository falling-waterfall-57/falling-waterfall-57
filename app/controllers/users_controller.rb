class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
      format.flash { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
      format.flash { render :xml => @users }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    if params.key?(:premium_user)
      usertype = "Premium"
      @user.premium = true
      @user.price = params[:price]
    else
      usertype = "Basic"
      @user.premium = false
    end
    @title = "Signup for Closed Beta #{usertype} User Account"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
      format.flash { render :xml => @users }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
      format.flash { render :xml => @users }
    end
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    @user.full_name = "#{@user.first_name} #{@user.last_name}"

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
        format.flash { render :xml => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        format.flash { render :xml => XML.failure(@user.errors, 422) }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
        format.flash { render :xml => @user }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        format.flash { render :xml => XML.failure(@user.errors, 422) }
      end
    end
  end
  
  def import_from_linked_in
    l = Linker.new
    if session[:li_token]
      l.client.authorize_from_access(session[:li_token], session[:li_secret])
    else
      redirect_to :controller => 'oauth_callback', :action => 'start_li_call'
    end
  end

end
