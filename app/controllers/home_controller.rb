class HomeController < ApplicationController
  def index
    @current_time = Time.now.stamp_like("Feb 1st 09:00 pm")
    
    @greet_message = case Time.now.hour
    when 5..11
      "Time for Coffee! <i class='fa fa-coffee'></i>".html_safe
    when 12..15
      "Art harder, Motherfucker! <i class='fa fa-pencil'></i>".html_safe
    when 16..19
      "Rock out! <i class='fa fa-music'></i>".html_safe
    when 20..23
      "Sweet dreams. <i class='fa fa-moon-o'></i>".html_safe
    end
  end
end
