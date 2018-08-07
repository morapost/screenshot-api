class ScreenshotsController < ApplicationController
	before_action :find_screenshot, only: [:show]

	def show
		urlbox_apikey = 'FBvNeX6OOhPNjYHj'

		@src_url = "https://api.urlbox.io/v1/#{urlbox_apikey}/png?url=#{@screenshot.url}&thumb_width=600&ttl=86400"
	end

	def new
		@screenshot = ScreenShotService.new
	end

	def create
		urlbox_apikey = 'FBvNeX6OOhPNjYHj'
  		urlbox_secret = 'e60af83053c5441ab5c384f925bb21e7'
  		@screenshot = ScreenShotService.new(capture_params)
  		if @screenshot.save
  			redirect_to screenshot_path(@screenshot), notice: "Successfully rendered URL"
  		else
  			render 'new'
  		end
	end

	private 

	def capture_params
		params.permit(:url)
	end

	def find_screenshot
		@screenshot = ScreenShotService.find(params[:id])
	end

end
