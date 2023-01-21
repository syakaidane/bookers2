class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  def get_profile_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    file_path = Rails.root.join('app/assets/images/no_image.jpeg')
  end
end