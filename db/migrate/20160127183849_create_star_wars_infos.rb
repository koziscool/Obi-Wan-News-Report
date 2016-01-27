class CreateStarWarsInfos < ActiveRecord::Migration
  def change
    create_table :star_wars_infos do |t|
      t.string :film_name
      t.text :crawl_text

      t.timestamps null: false
    end
  end
end
