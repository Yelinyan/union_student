class Article < ActiveRecord::Base
	default_scope -> { order('created_at DESC') }
	belongs_to :belong
#	validates :belong, :presence => true
end
