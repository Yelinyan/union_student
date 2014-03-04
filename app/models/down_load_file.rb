
class DownLoadFile < ActiveRecord::Base
	mount_uploader :asset, AssetUploader
#	attr_accessible :asset, :asset_cache, :remove_asset
end
