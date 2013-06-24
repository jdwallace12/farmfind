class PagesController < ApplicationController
  
  def index
    @json = Farm.all.to_gmaps4rails 
  end
end
