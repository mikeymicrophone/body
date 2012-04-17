class YogasController < ApplicationController
  # GET /yogas
  # GET /yogas.json
  def index
    @yogas = Yoga.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @yogas }
    end
  end

  # GET /yogas/1
  # GET /yogas/1.json
  def show
    @yoga = Yoga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @yoga }
    end
  end

  # GET /yogas/new
  # GET /yogas/new.json
  def new
    @yoga = Yoga.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @yoga }
    end
  end

  # GET /yogas/1/edit
  def edit
    @yoga = Yoga.find(params[:id])
  end

  # POST /yogas
  # POST /yogas.json
  def create
    @yoga = Yoga.new(params[:yoga])
    @yoga.creator = current_viber

    respond_to do |format|
      if @yoga.save
        format.html { redirect_to @yoga, notice: "OOMMMMMMMMMMM!  Yoga is scheduled for #{@yoga.time.strftime("%A, sensei :)")}" }
        format.json { render json: @yoga, status: :created, location: @yoga }
      else
        format.html { render action: "new" }
        format.json { render json: @yoga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /yogas/1
  # PUT /yogas/1.json
  def update
    @yoga = Yoga.find(params[:id])

    respond_to do |format|
      if @yoga.update_attributes(params[:yoga])
        format.html { redirect_to @yoga, notice: 'Yoga was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @yoga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yogas/1
  # DELETE /yogas/1.json
  def destroy
    @yoga = Yoga.find(params[:id])
    @yoga.destroy

    respond_to do |format|
      format.html { redirect_to yogas_url }
      format.json { head :no_content }
    end
  end
end
