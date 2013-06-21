class PagesController < ApplicationController
   
  def index
     @json = Farm.all.to_gmaps4rails

    def gmaps4rails_title
      "#{@farm.name}"
    end

  end
end
