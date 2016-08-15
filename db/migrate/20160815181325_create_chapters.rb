class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :body
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
