class Belong < ActiveRecord::Base
    has_many :articles
	validates :articles, :presence => true
end
