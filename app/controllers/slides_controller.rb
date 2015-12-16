class SlidesController < ApplicationController
  http_basic_authenticate_with name: ENV['HTTP_USERNAME'], password: ENV['HTTP_PASSWORD'], except: :index

  def index
    @slides = Slide.all
  end

  def new
    @slide = Slide.new
  end

  def create
    @slide = Slide.new(slide_params)

    if @slide.save
      redirect_to root_url, notice: 'Slide was successfully created.'
    else
      render :new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def slide_params
      params.require(:slide).permit(:image)
    end
end
