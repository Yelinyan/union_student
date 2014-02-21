class DisplayPagesController < ApplicationController
  def home
  	@carousel=Carousel.find(1)
  end
end
