class PagesController < ApplicationController
  helper_method :search_performed?
  def index
    @search = Farm.search(params[:q])
    @json = @search.result.to_gmaps4rails 
  end
 
  protected
  def search_performed?
    params[:q].present?
  end
end
