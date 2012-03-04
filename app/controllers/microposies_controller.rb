class MicroposiesController < ApplicationController
  # GET /microposies
  # GET /microposies.json
  def index
    @microposies = Microposy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microposies }
    end
  end

  # GET /microposies/1
  # GET /microposies/1.json
  def show
    @microposy = Microposy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microposy }
    end
  end

  # GET /microposies/new
  # GET /microposies/new.json
  def new
    @microposy = Microposy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microposy }
    end
  end

  # GET /microposies/1/edit
  def edit
    @microposy = Microposy.find(params[:id])
  end

  # POST /microposies
  # POST /microposies.json
  def create
    @microposy = Microposy.new(params[:microposy])

    respond_to do |format|
      if @microposy.save
        format.html { redirect_to @microposy, notice: 'Microposy was successfully created.' }
        format.json { render json: @microposy, status: :created, location: @microposy }
      else
        format.html { render action: "new" }
        format.json { render json: @microposy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microposies/1
  # PUT /microposies/1.json
  def update
    @microposy = Microposy.find(params[:id])

    respond_to do |format|
      if @microposy.update_attributes(params[:microposy])
        format.html { redirect_to @microposy, notice: 'Microposy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microposy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposies/1
  # DELETE /microposies/1.json
  def destroy
    @microposy = Microposy.find(params[:id])
    @microposy.destroy

    respond_to do |format|
      format.html { redirect_to microposies_url }
      format.json { head :no_content }
    end
  end
end
