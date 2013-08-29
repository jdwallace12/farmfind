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

  def about
  end

  def feedback
  end

  def terms
  end

  def featured
  end
end
