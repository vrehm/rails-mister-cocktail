# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    resize_to_fit 640, 360
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: :max,
      width: 150, height: 150, crop: :thumb, gravity: :face
  end
end
