class CreateScreenShotServices < ActiveRecord::Migration[5.0]
  def change
    create_table :screen_shot_services do |t|
      t.string :url

      t.timestamps
    end
  end
end
