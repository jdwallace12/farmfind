class FarmsController < ApplicationController
 
  before_filter :authenticate_user!

def index
  @farms = Farm.all
  @json = Farm.all.to_gmaps4rails
end

 

  # GET /farms/1
  # GET /farms/1.json
  def show
    @farm = Farm.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      @json = Farm.all.to_gmaps4rails
      format.json { render json: @farm }
    end
  end

  # GET /farms/new
  # GET /farms/new.json
  def new
    @farm = Farm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @farm }
    end
  end

  # GET /farms/1/edit
  def edit
    @farm = Farm.find(params[:id])
 
    #need to redirect if farm user does not = current_user
    unless @farm.user == current_user
      @json = Farm.all.to_gmaps4rails
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
        @json = Farm.all.to_gmaps4rails
        format.html { redirect_to @farm, :flash => { :success => "Farm was successfully updated." }}
      else
        format.html { render action: "edit" }
        format.json { render json: @farm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farms/1
  # DELETE /farms/1.json
  def destroy
    @farm = Farm.find(params[:id])
    @farm.destroy

    respond_to do |format|
      format.html { redirect_to farms_url }
      format.json { head :no_content }
    end
  end
end
