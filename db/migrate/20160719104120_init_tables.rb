class InitTables < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false

      t.timestamps
    end

    create_table :categories do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end

    create_table :post_sources do |t|
      t.string :name, null: false
      t.string :secret, null: false

      t.references :users, index: true, foreign_key: true, null: false
      t.references :categories, index: true, foreign_key: true, null: false

      t.timestamps
    end

    create_table :posts do |t|
      t.text :value, null: false

      t.references :post_sources, index: true, foreign_key: true, null: false

      t.timestamps
    end

    create_table :category_trees do |t|
      t.integer :child_id, null: false
      t.index ["child_id"], name: "index_category_trees_child", using: :btree
      t.integer :parent_id, null: false
      t.index ["parent_id"], name: "index_category_trees_parent", using: :btree

      t.timestamps
    end
    add_foreign_key "category_trees", "categories", column: "child_id"
    add_foreign_key "category_trees", "categories", column: "parent_id"

    create_table :subscribes do |t|
      t.references :users,      index: true, foreign_key: true, null: false
      t.references :categories, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
