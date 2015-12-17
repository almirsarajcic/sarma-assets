module SlidesHelper
  def slide_tag(slide, size)
    if Rails.env.production?
      image_tag "#{ENV['CDN_HOST']}/#{size}#{slide.image.path}"
    else
      image_tag slide.image
    end
  end
end
