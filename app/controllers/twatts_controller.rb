class TwattsController < ApplicationController
  before_action :set_twatt, only: [:show, :edit, :update, :destroy]

  # GET /twatts
  # GET /twatts.json
  def index
    @twatts = Twatt.all
  end

  # GET /twatts/1
  # GET /twatts/1.json
  def show
  end

  # GET /twatts/new
  def new
    @twatt = Twatt.new
  end

  # GET /twatts/1/edit
  def edit
  end

  # POST /twatts
  # POST /twatts.json
  def create
    @twatt = Twatt.new(twatt_params)

    respond_to do |format|
      if @twatt.save
        format.html { redirect_to @twatt, notice: 'Twatt was successfully created.' }
        format.json { render :show, status: :created, location: @twatt }
      else
        format.html { render :new }
        format.json { render json: @twatt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twatts/1
  # PATCH/PUT /twatts/1.json
  def update
    respond_to do |format|
      if @twatt.update(twatt_params)
        format.html { redirect_to @twatt, notice: 'Twatt was successfully updated.' }
        format.json { render :show, status: :ok, location: @twatt }
      else
        format.html { render :edit }
        format.json { render json: @twatt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twatts/1
  # DELETE /twatts/1.json
  def destroy
    @twatt.destroy
    respond_to do |format|
      format.html { redirect_to twatts_url, notice: 'Twatt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twatt
      @twatt = Twatt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twatt_params
      params.require(:twatt).permit(:name, :content)
    end
end
