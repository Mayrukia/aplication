class ProductDecorator < ApplicationDecorator
  delegate_all

  def image_attached
    image_tag object.image if object.image.attached?
  end
end
