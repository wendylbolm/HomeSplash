class HomeController < ApplicationController
  def index
    @current_time = Time.now.to_s(:short)
    
    @greet_message = case Time.now.hour
    when 5..11
      "Good Mernin"
    when 12..15
      "Good Afternoon, SUCKA"
    when 16..19
      "Buenos AFTERNOONAS"
    when 20..23
      "Gnight!"
    end
  end
end
