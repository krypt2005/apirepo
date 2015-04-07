class Api::V1::ImagesController < Api::V1::BaseController
  
  def create
    image = Image.create(image_params)

    respond_with 'api','v1',image
  end
  
  private

    def image_params
      params.require(:image).permit(:name, :target_ip,:status,:discover_ip, :asset_type, :priority_level, :label)
    end

    def query_params
    
    end

end

