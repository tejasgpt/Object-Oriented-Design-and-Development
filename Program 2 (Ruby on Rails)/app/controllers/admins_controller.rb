class AdminsController < ApplicationController
  before_action :set_admin, only: [:show]
  before_action :create_admin, only: [:index]

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show

  end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = Admin.find(params[:id])
  end

  def create_admin
    if(Admin.first.nil?)
      admin = Admin.create({:email => "admin1@gmail.com", :name => "Adminstrator", :password => "Admin123"})
    end
  end
end
