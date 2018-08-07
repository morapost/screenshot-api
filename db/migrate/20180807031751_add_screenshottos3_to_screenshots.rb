class AddScreenshottos3ToScreenshots < ActiveRecord::Migration[5.0]
  def change
  	add_column :screen_shot_services, :aws_url, :string
  end
end
