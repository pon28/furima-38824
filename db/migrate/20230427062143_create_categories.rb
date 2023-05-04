class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    t.string     :title        , null: false
    t.text       :text         , null: false
    t.integer    :category_id     , null: false
    t.timestamps
  end
end
