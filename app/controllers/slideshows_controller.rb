class SlideshowsController < ApplicationController
  # GET /slideshows
  # GET /slideshows.xml
  def index
    @slideshows = Slideshow.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @slideshows }
    end
  end

  # GET /slideshows/1
  # GET /slideshows/1.xml
  def show
    @slideshow = Slideshow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @slideshow }
    end
  end

  # GET /slideshows/new
  # GET /slideshows/new.xml
  def new
    @slideshow = Slideshow.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @slideshow }
    end
  end

  # GET /slideshows/1/edit
  def edit
    @slideshow = Slideshow.find(params[:id])
  end

  # POST /slideshows
  # POST /slideshows.xml
  def create
    @slideshow = Slideshow.new(params[:slideshow])

    respond_to do |format|
      if @slideshow.save
        flash[:notice] = 'Slideshow was successfully created.'
        format.html { redirect_to(@slideshow) }
        format.xml  { render :xml => @slideshow, :status => :created, :location => @slideshow }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @slideshow.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /slideshows/1
  # PUT /slideshows/1.xml
  def update
    @slideshow = Slideshow.find(params[:id])

    respond_to do |format|
      if @slideshow.update_attributes(params[:slideshow])
        flash[:notice] = 'Slideshow was successfully updated.'
        format.html { redirect_to(@slideshow) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @slideshow.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /slideshows/1
  # DELETE /slideshows/1.xml
  def destroy
    @slideshow = Slideshow.find(params[:id])
    @slideshow.destroy

    respond_to do |format|
      format.html { redirect_to(slideshows_url) }
      format.xml  { head :ok }
    end
  end
end
