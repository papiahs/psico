class AutorPicsController < ApplicationController
  # GET /autor_pics
  # GET /autor_pics.json
  def index
    @autor_pics = AutorPic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @autor_pics }
    end
  end

  # GET /autor_pics/1
  # GET /autor_pics/1.json
  def show
    @autor_pic = AutorPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @autor_pic }
    end
  end

  # GET /autor_pics/new
  # GET /autor_pics/new.json
  def new
    @autor_pic = AutorPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @autor_pic }
    end
  end

  # GET /autor_pics/1/edit
  def edit
    @autor_pic = AutorPic.find(params[:id])
  end

  # POST /autor_pics
  # POST /autor_pics.json
  def create
    @autor_pic = AutorPic.new(params[:autor_pic])

    respond_to do |format|
      if @autor_pic.save
        format.html { redirect_to @autor_pic, :notice => 'Autor pic was successfully created.' }
        format.json { render :json => @autor_pic, :status => :created, :location => @autor_pic }
      else
        format.html { render :action => "new" }
        format.json { render :json => @autor_pic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /autor_pics/1
  # PUT /autor_pics/1.json
  def update
    @autor_pic = AutorPic.find(params[:id])

    respond_to do |format|
      if @autor_pic.update_attributes(params[:autor_pic])
        format.html { redirect_to @autor_pic, :notice => 'Autor pic was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @autor_pic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /autor_pics/1
  # DELETE /autor_pics/1.json
  def destroy
    @autor_pic = AutorPic.find(params[:id])
    @autor_pic.destroy

    respond_to do |format|
      format.html { redirect_to autor_pics_url }
      format.json { head :ok }
    end
  end
end
