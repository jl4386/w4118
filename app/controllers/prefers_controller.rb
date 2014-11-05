class PrefersController < ApplicationController
  # GET /prefers
  # GET /prefers.json
  def index
    @prefers = Prefer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prefers }
    end
  end

  # GET /prefers/1
  # GET /prefers/1.json
  def show
    @prefer = Prefer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prefer }
    end
  end

  # GET /prefers/new
  # GET /prefers/new.json
  def new
    @prefer = Prefer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prefer }
    end
  end

  # GET /prefers/1/edit
  def edit
    @prefer = Prefer.find(params[:id])
  end

  # POST /prefers
  # POST /prefers.json
  def create
    @prefer = Prefer.new(params[:prefer])

    respond_to do |format|
      if @prefer.save
        format.html { redirect_to @prefer, notice: 'Prefer was successfully created.' }
        format.json { render json: @prefer, status: :created, location: @prefer }
      else
        format.html { render action: "new" }
        format.json { render json: @prefer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prefers/1
  # PUT /prefers/1.json
  def update
    @prefer = Prefer.find(params[:id])

    respond_to do |format|
      if @prefer.update_attributes(params[:prefer])
        format.html { redirect_to @prefer, notice: 'Prefer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prefer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prefers/1
  # DELETE /prefers/1.json
  def destroy
    @prefer = Prefer.find(params[:id])
    @prefer.destroy

    respond_to do |format|
      format.html { redirect_to prefers_url }
      format.json { head :no_content }
    end
  end
end
