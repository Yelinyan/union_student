class DownLoadFile < ActiveRecord::Base
    default_scope -> { order('created_at DESC') }
	mount_uploader :asset, AssetUploader
#	attr_accessible :asset, :asset_cache, :remove_asset
end
