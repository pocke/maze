# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  value           :text(65535)      not null
#  post_sources_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_posts_on_post_sources_id  (post_sources_id)
#
# Foreign Keys
#
#  fk_rails_42261f8a4a  (post_sources_id => post_sources.id)
#

class Post < ApplicationRecord
end
