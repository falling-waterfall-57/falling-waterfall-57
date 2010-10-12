class ViewsEmailsController < ApplicationController
  # GET /views_emails
  # GET /views_emails.xml
  def index
    @views_emails = ViewsEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @views_emails }
    end
  end

  # GET /views_emails/1
  # GET /views_emails/1.xml
  def show
    @views_email = ViewsEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @views_email }
    end
  end

  # GET /views_emails/new
  # GET /views_emails/new.xml
  def new
    @views_email = ViewsEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @views_email }
    end
  end

  # GET /views_emails/1/edit
  def edit
    @views_email = ViewsEmail.find(params[:id])
  end

  # POST /views_emails
  # POST /views_emails.xml
  def create
    @views_email = ViewsEmail.new(params[:views_email])

    respond_to do |format|
      if @views_email.save
        format.html { redirect_to(@views_email, :notice => 'Views email was successfully created.') }
        format.xml  { render :xml => @views_email, :status => :created, :location => @views_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @views_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /views_emails/1
  # PUT /views_emails/1.xml
  def update
    @views_email = ViewsEmail.find(params[:id])

    respond_to do |format|
      if @views_email.update_attributes(params[:views_email])
        format.html { redirect_to(@views_email, :notice => 'Views email was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @views_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /views_emails/1
  # DELETE /views_emails/1.xml
  def destroy
    @views_email = ViewsEmail.find(params[:id])
    @views_email.destroy

    respond_to do |format|
      format.html { redirect_to(views_emails_url) }
      format.xml  { head :ok }
    end
  end
end
