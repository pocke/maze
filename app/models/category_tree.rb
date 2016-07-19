# == Schema Information
#
# Table name: category_trees
#
#  id         :integer          not null, primary key
#  child_id   :integer          not null
#  parent_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_category_trees_child   (child_id)
#  index_category_trees_parent  (parent_id)
#
# Foreign Keys
#
#  fk_rails_262c4c2a7b  (child_id => categories.id)
#  fk_rails_fdb9be5681  (parent_id => categories.id)
#

class CategoryTree < ApplicationRecord
  belongs_to :child, class_name: Category
  belongs_to :parent, class_name: Category
end
