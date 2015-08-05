module ApplicationHelper
  IMAGE_SIZE = 64.freeze # image_url の表示サイズ

  def exhibit_image_tag(image_url)
    image_tag(image_url, hight: IMAGE_SIZE, width: IMAGE_SIZE) if image_url
  end
end
