class ArchiveCouriersController < ApplicationController
  before_action :set_archive_courier, only: [:show, :edit, :update, :destroy]
  before_action :set_archive_courier, only: [:show, :edit, :update, :destroy]
  #pour identification (devise)
  before_action :authenticate_user!
  #pour l'autorisation(cancancan)
  load_and_authorize_resource param_method: :archive_courier_params


  # GET /archive_couriers
  # GET /archive_couriers.json
  def index
    @archive_couriers = ArchiveCourier.all
  end

  # GET /archive_couriers/1
  # GET /archive_couriers/1.json
  def show
  end

  # GET /archive_couriers/new
  def new
    @archive_courier = ArchiveCourier.new
  end

  # GET /archive_couriers/1/edit
  def edit
  end

  # POST /archive_couriers
  # POST /archive_couriers.json
  def create
    @archive_courier = ArchiveCourier.new(archive_courier_params)

    respond_to do |format|
      if @archive_courier.save
        format.html { redirect_to @archive_courier, notice: 'Archive courier was successfully created.' }
        format.json { render :show, status: :created, location: @archive_courier }
      else
        format.html { render :new }
        format.json { render json: @archive_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archive_couriers/1
  # PATCH/PUT /archive_couriers/1.json
  def update
    respond_to do |format|
      if @archive_courier.update(archive_courier_params)
        format.html { redirect_to @archive_courier, notice: 'Archive courier was successfully updated.' }
        format.json { render :show, status: :ok, location: @archive_courier }
      else
        format.html { render :edit }
        format.json { render json: @archive_courier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archive_couriers/1
  # DELETE /archive_couriers/1.json
  def destroy
    @archive_courier.destroy
    respond_to do |format|
      format.html { redirect_to archive_couriers_url, notice: 'Archive courier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive_courier
      @archive_courier = ArchiveCourier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archive_courier_params
      params.require(:archive_courier).permit(:Courier_id,:file)
    end
end
