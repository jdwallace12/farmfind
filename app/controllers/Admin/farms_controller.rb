module Admin
  class FarmsController < ApplicationController
    
    def index
     if @farm.user == current_user
        @farms = Farm.find(params[:farm])
      end
    end


    def edit
      if @farm.user == current_user
        @farm = Farm.find(params[:id])
      end
    end
  end
end
