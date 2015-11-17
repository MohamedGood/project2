class CreateSuperheroes < ActiveRecord::Migration
  def change
    create_table :superheroes do |t|
      t.string :name
      t.string :body
      t.string :photo_url
    end
  end
end
