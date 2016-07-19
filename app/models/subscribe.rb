# == Schema Information
#
# Table name: subscribes
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  category_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_subscribes_on_category_id  (category_id)
#  index_subscribes_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_34b2351f9a  (user_id => users.id)
#  fk_rails_486f3dd549  (category_id => categories.id)
#

class Subscribe < ApplicationRecord
  belongs_to :user
  belongs_to :category
end
