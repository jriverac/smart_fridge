class FridgeEventsController < ApplicationController
  before_action :set_fridge_event, only: [:show, :edit, :update, :destroy]

  # GET /fridge_events
  # GET /fridge_events.json
  def index
    @fridge_events = FridgeEvent.all
  end

  # GET /fridge_events/1
  # GET /fridge_events/1.json
  def show
  end

  # GET /fridge_events/new
  def new
    @fridge_event = FridgeEvent.new
  end

  # GET /fridge_events/1/edit
  def edit
  end

  # POST /fridge_events
  # POST /fridge_events.json
  def create
    @fridge_event = FridgeEvent.new(fridge_event_params)

    respond_to do |format|
      if @fridge_event.save
        format.html { redirect_to @fridge_event, notice: 'Fridge event was successfully created.' }
        format.json { render :show, status: :created, location: @fridge_event }
      else
        format.html { render :new }
        format.json { render json: @fridge_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fridge_events/1
  # PATCH/PUT /fridge_events/1.json
  def update
    respond_to do |format|
      if @fridge_event.update(fridge_event_params)
        format.html { redirect_to @fridge_event, notice: 'Fridge event was successfully updated.' }
        format.json { render :show, status: :ok, location: @fridge_event }
      else
        format.html { render :edit }
        format.json { render json: @fridge_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fridge_events/1
  # DELETE /fridge_events/1.json
  def destroy
    @fridge_event.destroy
    respond_to do |format|
      format.html { redirect_to fridge_events_url, notice: 'Fridge event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fridge_event
      @fridge_event = FridgeEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fridge_event_params
      params.require(:fridge_event).permit(:temperature, :temperature, :door_open)
    end
end
