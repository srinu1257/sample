class Image < ActiveRecord::Base 
	attr_accessible :avatar,:tag_name
	belongs_to :album
	validates :tag_name, :presence => true
	mount_uploader :avatar, AvatarUploader 
	
end
