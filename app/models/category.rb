# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
  has_one :post_source
  has_many :subscribes
  has_many :users, through: :subscribes

  has_many :child_category_trees,  class_name: :CategoryTree, foreign_key: :child_id
  has_many :parent_category_trees, class_name: :CategoryTree, foreign_key: :parent_id
  has_many :children, through: :parent_category_trees
  has_many :parents,  through: :child_category_trees
end
