module ApplicationHelper
  IMAGE_SIZE = 64.freeze # image_url の表示サイズ

  def exhibit_image_or_slide_url_tag(exhibit)
    exhibit_image_tag(exhibit.image_url) if exhibit.image_url
    exhibit_slide_tag(exhibit.slide_url) if exhibit.slide_url
  end

  def exhibit_image_tag(image_url)
    return unless image_url
    link_to image_tag(image_url, hight: IMAGE_SIZE, width: IMAGE_SIZE), image_url
  end

  def exhibit_slide_tag(slide_url)
    return unless slide_url
    link_to slide_url, target: :blank do
      '<i class="fa fa-youtube-play"></i>'.html_safe
    end
  end
end
