class Book < ApplicationRecord
  
  has_one_attached :image
  belong_to :user
  
  def get_image
    if image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg', cintent_type: 'image/jpeg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    else
      image
    end
  end
end
