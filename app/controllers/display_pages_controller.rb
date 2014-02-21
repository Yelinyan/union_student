class DisplayPagesController < ApplicationController
  def home
  	@carousel=Carousel.all
  end
end
