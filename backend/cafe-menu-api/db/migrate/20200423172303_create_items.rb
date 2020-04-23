class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price, default: "0.0"
      t.integer :menu_id
      t.string :image_url
      t.timestamps
    end
  end
end
