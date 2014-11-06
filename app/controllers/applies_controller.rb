class AppliesController < ApplicationController
  # GET /applies
  # GET /applies.json
  def index
    @applies = Apply.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applies }
    end
  end

  # GET /applies/1
  # GET /applies/1.json
  def show
    @apply = Apply.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apply }
    end
  end

  # GET /applies/new
  # GET /applies/new.json
  def new
    @apply = Apply.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apply }
    end
  end

  # GET /applies/1/edit
  def edit
    @apply = Apply.find(params[:id])
  end

def create
	@position = Position.find(params[:apply][:position_id]) 
	current_user.apply!(@position.position_id)
	respond_to do |format|
		format.html {redirect_to current_user}
		format.js
	end
end

  # PUT /applies/1
  # PUT /applies/1.json
  def update
    @apply = Apply.find(params[:id])

    respond_to do |format|
      if @apply.update_attributes(params[:apply])
        format.html { redirect_to @apply, notice: 'Apply was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applies/1
  # DELETE /applies/1.json
  def destroy
    @apply = Apply.find(params[:id])
    @apply.destroy

    respond_to do |format|
      format.html { redirect_to applies_url }
      format.json { head :no_content }
    end
  end
end
