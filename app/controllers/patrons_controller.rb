class PatronsController < ApplicationController
  before_action :set_patron, only: [:show, :edit, :update, :destroy]

  # GET /patrons
  # GET /patrons.json
  def index
    @patrons = Patron.all
  end

  # GET /patrons/1
  # GET /patrons/1.json
  def show
  end

  # GET /patrons/new
  def new
    @patron = Patron.new
  end

  # GET /patrons/1/edit
  def edit
  end

  # POST /patrons
  # POST /patrons.json
  def create
    @patron = Patron.new(patron_params)

    respond_to do |format|
      if @patron.save
        format.html { redirect_to @patron, notice: 'Patron was successfully created.' }
        format.json { render action: 'show', status: :created, location: @patron }
      else
        format.html { render action: 'new' }
        format.json { render json: @patron.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patrons/1
  # PATCH/PUT /patrons/1.json
  def update
    respond_to do |format|
      if @patron.update(patron_params)
        format.html { redirect_to @patron, notice: 'Patron was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @patron.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patrons/1
  # DELETE /patrons/1.json
  def destroy
    @patron.destroy
    respond_to do |format|
      format.html { redirect_to patrons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patron
      @patron = Patron.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patron_params
      params.require(:patron).permit(:first_name, :last_name)
    end
end
