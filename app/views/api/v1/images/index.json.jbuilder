json.array!(@assets) do |asset|
  json.extract! asset, :id, :name, :target_ip, :discover_ip, :status, :asset_type, :priority_level, :label
  json.url api_asset_url(asset, format: :json)
end
