class FarmsController < ApplicationController
 
  before_filter :authenticate_user!

  def index
    @farms = current_user.farms
  end


  def show
    @farm = Farm.find(params[:id])
    respond_to do |format|
      format.html 
      format.json { render json: @farm }
    end
  end

  def new
    @farm = Farm.new
    respond_to do |format|
      format.html
      format.json { render json: @farm }
    end
  end

  def edit
    @farm = Farm.find(params[:id])
    unless @farm.user == current_user
      redirect_to root_path, :flash => { error: "You can't edit farms that don't belong to you." }
    end
  end


  def create
    @farm = Farm.new(params[:farm])
    @farm.user = current_user
    respond_to do |format|
      if @farm.save
        @json = Farm.all.to_gmaps4rails
        format.html { redirect_to root_path, :flash => { :success => "Farm was successfully created." }}
        format.json { render json: @farm, status: :created, location: @farm }
      else
        format.html { render action: "new" }
        format.json { render json: @farm.errors, status: :unprocessable_entity }

      end
    end
  end


  def update
    @farm = Farm.find(params[:id])
    respond_to do |format|
      if @farm.update_attributes(params[:farm])
        format.html { redirect_to @farm, :flash => { :success => "Farm was successfully updated." }}
         @json = Farm.all.to_gmaps4rails
      else
        format.html { render action: "edit" }
        format.json { render json: @farm.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    
    @farm = Farm.find(params[:id])
    @farm.destroy

    respond_to do |format|
      format.html { redirect_to farms_url }
      format.json { head :no_content }
   
    end
  end
end
