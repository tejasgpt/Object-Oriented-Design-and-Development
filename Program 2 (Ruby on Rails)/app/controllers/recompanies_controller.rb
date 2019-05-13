class RecompaniesController < ApplicationController
  before_action :set_recompany, only: [:show, :edit, :update, :destroy]

  # GET /recompanies
  # GET /recompanies.json
  def index
    @recompanies = Recompany.all
  end

  # GET /recompanies/1
  # GET /recompanies/1.json
  def show
  end

  # GET /recompanies/new
  def new
    @recompany = Recompany.new
  end

  # GET /recompanies/1/edit
  def edit
  end

  # POST /recompanies
  # POST /recompanies.json
  def create
    @recompany = Recompany.new(recompany_params)

    respond_to do |format|
      if @recompany.save
        format.html { redirect_to @recompany, notice: 'Recompany was successfully created.' }
        format.json { render :show, status: :created, location: @recompany }
      else
        format.html { render :new }
        format.json { render json: @recompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recompanies/1
  # PATCH/PUT /recompanies/1.json
  def update
    respond_to do |format|
      if @recompany.update(recompany_params)
        format.html { redirect_to @recompany, notice: 'Recompany was successfully updated.' }
        format.json { render :show, status: :ok, location: @recompany }
      else
        format.html { render :edit }
        format.json { render json: @recompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recompanies/1
  # DELETE /recompanies/1.json
  def destroy
    @recompany.destroy
    respond_to do |format|
      format.html { redirect_to recompanies_url, notice: 'Recompany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recompany
      @recompany = Recompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recompany_params
      params.require(:recompany).permit(:name, :website, :address, :size, :founded, :revenue, :synopsis)
    end
end
