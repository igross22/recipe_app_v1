class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.boolean :in_plan
      t.integer :user_id
      t.string :source_url
      t.integer :cooking_time
      t.string :cooking_method
      t.string :cuisine_type
      t.string :name

      t.timestamps null: false
    end
  end
end
