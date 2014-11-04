class InfoSessionsController < ApplicationController
  # GET /info_sessions
  # GET /info_sessions.json
  def index
    @info_sessions = InfoSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @info_sessions }
    end
  end

  # GET /info_sessions/1
  # GET /info_sessions/1.json
  def show
    @info_session = InfoSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @info_session }
    end
  end

  # GET /info_sessions/new
  # GET /info_sessions/new.json
  def new
    @info_session = InfoSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @info_session }
    end
  end

  # GET /info_sessions/1/edit
  def edit
    @info_session = InfoSession.find(params[:id])
  end

  # POST /info_sessions
  # POST /info_sessions.json
  def create
    @info_session = InfoSession.new(params[:info_session])

    respond_to do |format|
      if @info_session.save
        format.html { redirect_to @info_session, notice: 'Info session was successfully created.' }
        format.json { render json: @info_session, status: :created, location: @info_session }
      else
        format.html { render action: "new" }
        format.json { render json: @info_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /info_sessions/1
  # PUT /info_sessions/1.json
  def update
    @info_session = InfoSession.find(params[:id])

    respond_to do |format|
      if @info_session.update_attributes(params[:info_session])
        format.html { redirect_to @info_session, notice: 'Info session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @info_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_sessions/1
  # DELETE /info_sessions/1.json
  def destroy
    @info_session = InfoSession.find(params[:id])
    @info_session.destroy

    respond_to do |format|
      format.html { redirect_to info_sessions_url }
      format.json { head :no_content }
    end
  end
end
