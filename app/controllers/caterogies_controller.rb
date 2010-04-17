class CaterogiesController < ApplicationController
  # GET /caterogies
  # GET /caterogies.xml
  def index
    @caterogies = Caterogy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caterogies }
    end
  end

  # GET /caterogies/1
  # GET /caterogies/1.xml
  def show
    @caterogy = Caterogy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caterogy }
    end
  end

  # GET /caterogies/new
  # GET /caterogies/new.xml
  def new
    @caterogy = Caterogy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caterogy }
    end
  end

  # GET /caterogies/1/edit
  def edit
    @caterogy = Caterogy.find(params[:id])
  end

  # POST /caterogies
  # POST /caterogies.xml
  def create
    @caterogy = Caterogy.new(params[:caterogy])

    respond_to do |format|
      if @caterogy.save
        flash[:notice] = 'Caterogy was successfully created.'
        format.html { redirect_to(@caterogy) }
        format.xml  { render :xml => @caterogy, :status => :created, :location => @caterogy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caterogy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caterogies/1
  # PUT /caterogies/1.xml
  def update
    @caterogy = Caterogy.find(params[:id])

    respond_to do |format|
      if @caterogy.update_attributes(params[:caterogy])
        flash[:notice] = 'Caterogy was successfully updated.'
        format.html { redirect_to(@caterogy) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caterogy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caterogies/1
  # DELETE /caterogies/1.xml
  def destroy
    @caterogy = Caterogy.find(params[:id])
    @caterogy.destroy

    respond_to do |format|
      format.html { redirect_to(caterogies_url) }
      format.xml  { head :ok }
    end
  end
end
