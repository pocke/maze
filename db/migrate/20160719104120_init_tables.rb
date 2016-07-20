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

      t.references :user, index: true, foreign_key: true, null: false
      t.references :category, index: true, foreign_key: true, null: false

      t.timestamps
    end

    create_table :posts do |t|
      t.text :value, null: false

      t.references :post_source, index: true, foreign_key: true, null: false

      t.timestamps
    end

    create_table :subscribes do |t|
      t.references :user,      index: true, foreign_key: true, null: false
      t.references :category, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
