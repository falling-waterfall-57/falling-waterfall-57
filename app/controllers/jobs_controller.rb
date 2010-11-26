class JobsController < ApplicationController
  # GET /jobs
  # GET /jobs.xml
  def index
    @jobs = Job.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.xml
  def show
    @job = Job.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.xml
  def new
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.xml
  def create
    @job = Job.new(params[:job])

    respond_to do |format|
      if @job.save
        format.html { redirect_to(@job, :notice => 'Job was successfully created.') }
        format.xml  { render :xml => @job, :status => :created, :location => @job }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.xml
  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to(@job, :notice => 'Job was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.xml
  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to(jobs_url) }
      format.xml  { head :ok }
    end
  end
  
  def initiate_synch_with_linkedin
    client = Linker.authenticate_from_keys(session[:li_token], session[:li_secret])
    response = Hash.new
    if client
      li_job_ids = client.profile(:fields => ['positions']).positions.map { |job| job.id }
      fc_job_ids = Jobs.all.map { |job| job.id unless job.id.nil? }
      session[:new_li_jobs] = li_job_ids - fc_job_ids
      session[:new_fc_jobs] = fc_job_ids - li_job_ids
      session[:synch_jobs]  = fc_job_ids & li_job_ids
      response[:import] = session[:new_li_jobs].size
      response[:export] = session[:new_fc_jobs].size
      response[:synch] = session[:synch_jobs].size
    else
      message = "We are experiencing difficulties connecting to LinkedIn. Please try again later."
    end
    respond_to do |format|
      format.json {render :json => response}
    end
  end
  
  def complete_synch_with_linkedin
    client = Linker.authenticate_from_keys(session[:li_token], session[:li_secret])
    if client
      li_jobs = client.profile(:fields => ['positions']).positions
      fc_jobs = Jobs.all
    
      add_li_jobs_to_fc
      add_fc_jobs_to_li
      synch_li_fc_jobs
  end
  
private
  
  def  add_li_jobs_to_fc
  end
  
  def add_fc_jobs_to_li
  end
  
  def synch_li_fc_jobs
  end
end
