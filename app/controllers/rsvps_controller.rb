class RsvpsController < ApplicationController
  # GET /rsvps
  # GET /rsvps.json
  def index
    @rsvps = if params[:event_id]
      @event = Event.find params[:event_id]
      @event.rsvps
    else
      Rsvp.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rsvps }
    end
  end

  # GET /rsvps/1
  # GET /rsvps/1.json
  def show
    @rsvp = Rsvp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rsvp }
    end
  end

  # GET /rsvps/new
  # GET /rsvps/new.json
  def new
    @rsvp = Rsvp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rsvp }
    end
  end

  # GET /rsvps/1/edit
  def edit
    @rsvp = Rsvp.find(params[:id])
  end

  # POST /rsvps
  # POST /rsvps.json
  def create
    @rsvp = Rsvp.new(params[:rsvp])
    @rsvp.viber = current_viber
    
    respond_to do |format|
      if @rsvp.save
        format.js
        format.html { redirect_to @rsvp, notice: 'Rsvp was successfully created.' }
        format.json { render json: @rsvp, status: :created, location: @rsvp }
      else
        format.html { render action: "new" }
        format.json { render json: @rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rsvps/1
  # PUT /rsvps/1.json
  def update
    @rsvp = Rsvp.find(params[:id])

    respond_to do |format|
      if @rsvp.update_attributes(params[:rsvp])
        format.html { redirect_to @rsvp, notice: 'Rsvp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rsvps/1
  # DELETE /rsvps/1.json
  def destroy
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy

    respond_to do |format|
      format.html { redirect_to rsvps_url }
      format.json { head :no_content }
    end
  end
end
