class CreateSpreeAds < ActiveRecord::Migration
  def change
    create_table :spree_ads do |t|
      t.string :name
      t.attachment :avatar
      t.timestamps
    end
  end
end
