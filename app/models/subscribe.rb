# == Schema Information
#
# Table name: subscribes
#
#  id            :integer          not null, primary key
#  users_id      :integer          not null
#  categories_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_subscribes_on_categories_id  (categories_id)
#  index_subscribes_on_users_id       (users_id)
#
# Foreign Keys
#
#  fk_rails_59b1dcee48  (users_id => users.id)
#  fk_rails_e53cf27640  (categories_id => categories.id)
#

class Subscribe < ApplicationRecord
end
