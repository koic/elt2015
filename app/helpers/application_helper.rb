module ApplicationHelper
  IMAGE_SIZE = 64.freeze # image_url の表示サイズ

  def exhibit_image_tag(image_url)
    return unless image_url
    link_to image_tag(image_url, hight: IMAGE_SIZE, width: IMAGE_SIZE), image_url
  end
end
