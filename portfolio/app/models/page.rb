class Page < ActiveRecord::Base
	mount_uploader :cover, AttachmentUploader
	validates :title, presence: true
end
