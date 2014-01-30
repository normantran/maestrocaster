class ImprovisersController < ApplicationController
  before_action :set_improviser, only: [:show, :edit, :update, :destroy]

  # GET /improvisers
  # GET /improvisers.json
  def index
    @improvisers = Improviser.all
  end

  # GET /improvisers/1
  # GET /improvisers/1.json
  def show
  end

  # GET /improvisers/new
  def new
    @improviser = Improviser.new
  end

  # GET /improvisers/1/edit
  def edit
  end

  # POST /improvisers
  # POST /improvisers.json
  def create
    @improviser = Improviser.new(improviser_params)

    respond_to do |format|
      if @improviser.save
        format.html { redirect_to @improviser, notice: 'Improviser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @improviser }
      else
        format.html { render action: 'new' }
        format.json { render json: @improviser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /improvisers/1
  # PATCH/PUT /improvisers/1.json
  def update
    respond_to do |format|
      if @improviser.update(improviser_params)
        format.html { redirect_to @improviser, notice: 'Improviser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @improviser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /improvisers/1
  # DELETE /improvisers/1.json
  def destroy
    @improviser.destroy
    respond_to do |format|
      format.html { redirect_to improvisers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_improviser
      @improviser = Improviser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def improviser_params
      params.require(:improviser).permit(:string)
    end
end
