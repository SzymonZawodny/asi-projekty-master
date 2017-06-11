class AutoHandelsController < ApplicationController
  before_action :set_auto_handel, only: [:show, :edit, :update, :destroy]

  # GET /auto_handels
  # GET /auto_handels.json
  def index
    @auto_handels = AutoHandel.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /auto_handels/1
  # GET /auto_handels/1.json
  def show
  end

  # GET /auto_handels/new
  def new
    @auto_handel = AutoHandel.new
  end

  # GET /auto_handels/1/edit
  def edit
  end

  # POST /auto_handels
  # POST /auto_handels.json
  def create
    @auto_handel = AutoHandel.new(auto_handel_params)

    respond_to do |format|
      if @auto_handel.save
        format.html { redirect_to @auto_handel, notice: 'Auto handel was successfully created.' }
        format.json { render :show, status: :created, location: @auto_handel }
      else
        format.html { render :new }
        format.json { render json: @auto_handel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_handels/1
  # PATCH/PUT /auto_handels/1.json
  def update
    respond_to do |format|
      if @auto_handel.update(auto_handel_params)
        format.html { redirect_to @auto_handel, notice: 'Auto handel was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_handel }
      else
        format.html { render :edit }
        format.json { render json: @auto_handel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_handels/1
  # DELETE /auto_handels/1.json
  def destroy
    @auto_handel.destroy
    respond_to do |format|
      format.html { redirect_to auto_handels_url, notice: 'Auto handel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_handel
      @auto_handel = AutoHandel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_handel_params
      params.require(:auto_handel).permit(:marka, :model, :cena)
    end
end
