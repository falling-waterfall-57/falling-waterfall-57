class DataGroupsController < ApplicationController
  # GET /data_groups
  # GET /data_groups.xml
  def index
    @data_groups = DataGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @data_groups }
    end
  end

  # GET /data_groups/1
  # GET /data_groups/1.xml
  def show
    @data_group = DataGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @data_group }
    end
  end

  # GET /data_groups/new
  # GET /data_groups/new.xml
  def new
    @data_group = DataGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @data_group }
    end
  end

  # GET /data_groups/1/edit
  def edit
    @data_group = DataGroup.find(params[:id])
  end

  # POST /data_groups
  # POST /data_groups.xml
  def create
    @data_group = DataGroup.new(params[:data_group])

    respond_to do |format|
      if @data_group.save
        format.html { redirect_to(@data_group, :notice => 'Data group was successfully created.') }
        format.xml  { render :xml => @data_group, :status => :created, :location => @data_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @data_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /data_groups/1
  # PUT /data_groups/1.xml
  def update
    @data_group = DataGroup.find(params[:id])

    respond_to do |format|
      if @data_group.update_attributes(params[:data_group])
        format.html { redirect_to(@data_group, :notice => 'Data group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @data_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /data_groups/1
  # DELETE /data_groups/1.xml
  def destroy
    @data_group = DataGroup.find(params[:id])
    @data_group.destroy

    respond_to do |format|
      format.html { redirect_to(data_groups_url) }
      format.xml  { head :ok }
    end
  end
end
