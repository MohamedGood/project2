class CreateWebpages < ActiveRecord::Migration
  def change
    create_table :webpages do |t|
      t.string :title
      t.string :body_text
      t.string :photo_url
      t.string :border_control
      t.string :background_color

    end
  end
end
