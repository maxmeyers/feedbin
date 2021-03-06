class CreateSavedSearches < ActiveRecord::Migration
  def change
    create_table :saved_searches do |t|
      t.references :user, index: true, null: false
      t.text :name, null: false
      t.text :query

      t.timestamps
    end
  end
end
