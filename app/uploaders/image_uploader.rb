# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base


  def default_url
    "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

version :image_preview do
  process :resize_to_limit => [200, 200]
end

  version :thumb do
     process :resize_to_limit => [200, 200]
  end

  version :profile do
    process :resize_to_limit => [800, 600]
  end

end
