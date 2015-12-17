class AddImageFingerprintToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :image_fingerprint, :string
  end
end
