class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]
  # before_action :check_current_user

  #before_action :set_current_user

  # GET /houses
  # GET /houses.json
  def index
    # @current_user ||= current_realtor || current_house_hunter
    # binding.irb
    @houses = House.all # @current_user.houses
  end

  # GET /houses/1
  # GET /houses/1.json
  def show
  end

  def inquiries

  end


  def realtorhouses

  end

  # GET /houses/new
  def new
    #@house = House.new
    @house= current_realtor.houses.build
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  # POST /houses.json
  def create
    @house= current_realtor.houses.build(house_params)


    respond_to do |format|
      if @house.save
        format.html { redirect_to @house, notice: 'House was successfully created.' }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to @house, notice: 'House was successfully updated.' }
        format.json { render :show, status: :ok, location: @house }
      else
        format.html { render :edit }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1
  # DELETE /houses/1.json
  def destroy
    @house.destroy
    respond_to do |format|
      format.html { redirect_to houses_url, notice: 'House was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_params
      params.require(:house).permit(:companyid, :location, :sqf, :year, :style, :price, :floors, :basement, :owner, :contact, :potentialbuyers)
    end
end
