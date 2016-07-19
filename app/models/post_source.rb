# == Schema Information
#
# Table name: post_sources
#
#  id            :integer          not null, primary key
#  name          :string(255)      not null
#  secret        :string(255)      not null
#  users_id      :integer          not null
#  categories_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_post_sources_on_categories_id  (categories_id)
#  index_post_sources_on_users_id       (users_id)
#
# Foreign Keys
#
#  fk_rails_875f7ffb60  (categories_id => categories.id)
#  fk_rails_f04982cf94  (users_id => users.id)
#

class PostSource < ApplicationRecord
end
