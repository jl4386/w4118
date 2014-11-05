class PossessesController < ApplicationController
  # GET /possesses
  # GET /possesses.json
  def index
    @possesses = Possess.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @possesses }
    end
  end

  # GET /possesses/1
  # GET /possesses/1.json
  def show
    @possess = Possess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @possess }
    end
  end

  # GET /possesses/new
  # GET /possesses/new.json
  def new
    @possess = Possess.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @possess }
    end
  end

  # GET /possesses/1/edit
  def edit
    @possess = Possess.find(params[:id])
  end

  # POST /possesses
  # POST /possesses.json
  def create
    @possess = Possess.new(params[:possess])

    respond_to do |format|
      if @possess.save
        format.html { redirect_to @possess, notice: 'Possess was successfully created.' }
        format.json { render json: @possess, status: :created, location: @possess }
      else
        format.html { render action: "new" }
        format.json { render json: @possess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /possesses/1
  # PUT /possesses/1.json
  def update
    @possess = Possess.find(params[:id])

    respond_to do |format|
      if @possess.update_attributes(params[:possess])
        format.html { redirect_to @possess, notice: 'Possess was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @possess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possesses/1
  # DELETE /possesses/1.json
  def destroy
    @possess = Possess.find(params[:id])
    @possess.destroy

    respond_to do |format|
      format.html { redirect_to possesses_url }
      format.json { head :no_content }
    end
  end
end
