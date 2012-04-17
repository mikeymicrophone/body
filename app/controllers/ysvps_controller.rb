class YsvpsController < ApplicationController
  # GET /ysvps
  # GET /ysvps.json
  def index
    @ysvps = Ysvp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ysvps }
    end
  end

  # GET /ysvps/1
  # GET /ysvps/1.json
  def show
    @ysvp = Ysvp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ysvp }
    end
  end

  # GET /ysvps/new
  # GET /ysvps/new.json
  def new
    @ysvp = Ysvp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ysvp }
    end
  end

  # GET /ysvps/1/edit
  def edit
    @ysvp = Ysvp.find(params[:id])
  end

  # POST /ysvps
  # POST /ysvps.json
  def create
    @ysvp = Ysvp.new(params[:ysvp])

    respond_to do |format|
      if @ysvp.save
        format.html { redirect_to @ysvp, notice: 'Ysvp was successfully created.' }
        format.json { render json: @ysvp, status: :created, location: @ysvp }
      else
        format.html { render action: "new" }
        format.json { render json: @ysvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ysvps/1
  # PUT /ysvps/1.json
  def update
    @ysvp = Ysvp.find(params[:id])

    respond_to do |format|
      if @ysvp.update_attributes(params[:ysvp])
        format.html { redirect_to @ysvp, notice: 'Ysvp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ysvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ysvps/1
  # DELETE /ysvps/1.json
  def destroy
    @ysvp = Ysvp.find(params[:id])
    @ysvp.destroy

    respond_to do |format|
      format.html { redirect_to ysvps_url }
      format.json { head :no_content }
    end
  end
end
