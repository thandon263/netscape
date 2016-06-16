class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :url
      t.text :description

      t.timestamps null: false
    end
  end
end
