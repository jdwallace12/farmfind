class PagesController < ApplicationController
   
  def index
    @json = Farm.all.to_gmaps4rails
   #  @json = @farms.to_gmaps4rails do |farm, marker|
   #  marker.infowindow render_to_string(:partial => "farms", :locals => { :farm => farm})
   #  marker.title "#{farm.name}"
   #  marker.json({ :certification => farm.certification})
   #  marker.picture({:picture => "http://mapicons.nicolasmollet.com/wp-content/uploads/mapicons/shape-default/color-3875d7/shapecolor-color/shadow-1/border-dark/symbolstyle-contrast/symbolshadowstyle-dark/gradient-iphone/information.png",
   #                  :width => 32,
   #                  :height => 32})
   # end
    end
end
