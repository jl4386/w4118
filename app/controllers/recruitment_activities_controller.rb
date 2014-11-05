class RecruitmentActivitiesController < ApplicationController
  # GET /recruitment_activities
  # GET /recruitment_activities.json
  def index
    @recruitment_activities = RecruitmentActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recruitment_activities }
    end
  end

  # GET /recruitment_activities/1
  # GET /recruitment_activities/1.json
  def show
    @recruitment_activity = RecruitmentActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recruitment_activity }
    end
  end

  # GET /recruitment_activities/new
  # GET /recruitment_activities/new.json
  def new
    @recruitment_activity = RecruitmentActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recruitment_activity }
    end
  end

  # GET /recruitment_activities/1/edit
  def edit
    @recruitment_activity = RecruitmentActivity.find(params[:id])
  end

  # POST /recruitment_activities
  # POST /recruitment_activities.json
  def create
    @recruitment_activity = RecruitmentActivity.new(params[:recruitment_activity])

    respond_to do |format|
      if @recruitment_activity.save
        format.html { redirect_to @recruitment_activity, notice: 'Recruitment activity was successfully created.' }
        format.json { render json: @recruitment_activity, status: :created, location: @recruitment_activity }
      else
        format.html { render action: "new" }
        format.json { render json: @recruitment_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recruitment_activities/1
  # PUT /recruitment_activities/1.json
  def update
    @recruitment_activity = RecruitmentActivity.find(params[:id])

    respond_to do |format|
      if @recruitment_activity.update_attributes(params[:recruitment_activity])
        format.html { redirect_to @recruitment_activity, notice: 'Recruitment activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recruitment_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruitment_activities/1
  # DELETE /recruitment_activities/1.json
  def destroy
    @recruitment_activity = RecruitmentActivity.find(params[:id])
    @recruitment_activity.destroy

    respond_to do |format|
      format.html { redirect_to recruitment_activities_url }
      format.json { head :no_content }
    end
  end
end
