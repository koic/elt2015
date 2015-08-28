module ApplicationHelper
  IMAGE_SIZE = 64.freeze # image_url の表示サイズ

  def exhibit_image_or_slide_url_tag(exhibit)
    return exhibit_image_tag(exhibit.image_url) if exhibit.image_url.present?
    return exhibit_slide_tag(exhibit.slide_url) if exhibit.slide_url.present?
  end

  def exhibit_image_tag(image_url)
    return if image_url.blank?
    link_to image_tag(image_url, hight: IMAGE_SIZE, width: IMAGE_SIZE), image_url, target: :blank
  end

  def exhibit_slide_tag(slide_url)
    return if slide_url.blank?
    link_to slide_url, target: :blank do
      '<i class="fa fa-youtube-play"></i>'.html_safe
    end
  end
end
