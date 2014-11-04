class CareerFairsController < ApplicationController
  # GET /career_fairs
  # GET /career_fairs.json
  def index
    @career_fairs = CareerFair.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @career_fairs }
    end
  end

  # GET /career_fairs/1
  # GET /career_fairs/1.json
  def show
    @career_fair = CareerFair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @career_fair }
    end
  end

  # GET /career_fairs/new
  # GET /career_fairs/new.json
  def new
    @career_fair = CareerFair.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @career_fair }
    end
  end

  # GET /career_fairs/1/edit
  def edit
    @career_fair = CareerFair.find(params[:id])
  end

  # POST /career_fairs
  # POST /career_fairs.json
  def create
    @career_fair = CareerFair.new(params[:career_fair])

    respond_to do |format|
      if @career_fair.save
        format.html { redirect_to @career_fair, notice: 'Career fair was successfully created.' }
        format.json { render json: @career_fair, status: :created, location: @career_fair }
      else
        format.html { render action: "new" }
        format.json { render json: @career_fair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /career_fairs/1
  # PUT /career_fairs/1.json
  def update
    @career_fair = CareerFair.find(params[:id])

    respond_to do |format|
      if @career_fair.update_attributes(params[:career_fair])
        format.html { redirect_to @career_fair, notice: 'Career fair was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @career_fair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /career_fairs/1
  # DELETE /career_fairs/1.json
  def destroy
    @career_fair = CareerFair.find(params[:id])
    @career_fair.destroy

    respond_to do |format|
      format.html { redirect_to career_fairs_url }
      format.json { head :no_content }
    end
  end
end
