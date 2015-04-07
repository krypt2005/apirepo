collection [@image] => :images

attributes :name, :target_ip,  :status, :image_type, :priority_level, :label

node :links do |image|
  links = {}
  if params['action'] == 'index'
    links[:show_image] = api_v1_image_url(image.id)
  else
    links[:all_images] = api_v1_images_url
  end
  links
end


