module ApplicationHelper
 def bootstrap_class_for flash_type
    case flash_type
    when :success
     "alert-success"
    when :error
     "alert-error"
    when :alert
      "alert-block"
    when :notice
      "alert-success"
    else
     flash_type.to_s
    end
  end
end


module ApplicationHelper
  def glyph(*names)
   content_tag :i, nil, class: names.map{|name| "icon-#{name.to_s.gsub('_','-')}" }
  end
end 
