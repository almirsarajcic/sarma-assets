class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.attachment :image

      t.timestamps null: false
    end
  end
end
