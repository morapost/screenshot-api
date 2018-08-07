class ScreenShotService < ApplicationRecord
	mount_uploader :aws_url, ScreenshotUploader
end
