class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :title
      t.datetime :published_at, index: true
      t.text :content
      t.string :url
      t.belongs_to :feed
      t.timestamps
    end
  end
end
