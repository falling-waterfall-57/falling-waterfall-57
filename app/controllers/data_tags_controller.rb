class DataTagsController < ApplicationController
  # GET /data_tags
  # GET /data_tags.xml
  def index
    @data_tags = DataTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @data_tags }
    end
  end

  # GET /data_tags/1
  # GET /data_tags/1.xml
  def show
    @data_tag = DataTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @data_tag }
    end
  end

  # GET /data_tags/new
  # GET /data_tags/new.xml
  def new
    @data_tag = DataTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @data_tag }
    end
  end

  # GET /data_tags/1/edit
  def edit
    @data_tag = DataTag.find(params[:id])
  end

  # POST /data_tags
  # POST /data_tags.xml
  def create
    @data_tag = DataTag.new(params[:data_tag])

    respond_to do |format|
      if @data_tag.save
        format.html { redirect_to(@data_tag, :notice => 'Data tag was successfully created.') }
        format.xml  { render :xml => @data_tag, :status => :created, :location => @data_tag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @data_tag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /data_tags/1
  # PUT /data_tags/1.xml
  def update
    @data_tag = DataTag.find(params[:id])

    respond_to do |format|
      if @data_tag.update_attributes(params[:data_tag])
        format.html { redirect_to(@data_tag, :notice => 'Data tag was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @data_tag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /data_tags/1
  # DELETE /data_tags/1.xml
  def destroy
    @data_tag = DataTag.find(params[:id])
    @data_tag.destroy

    respond_to do |format|
      format.html { redirect_to(data_tags_url) }
      format.xml  { head :ok }
    end
  end
end
