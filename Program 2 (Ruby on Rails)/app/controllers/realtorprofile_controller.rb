class RealtorprofileController < ApplicationController
  def houses
  end
  def show
    @realtor = Realtor.find(params[:id])
    @realtor_houses = @realtor.houses
  end
end
