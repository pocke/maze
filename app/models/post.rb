# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  post_source_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  title          :string(255)      not null
#  description    :text(65535)      not null
#  image_url      :string(255)
#  url            :string(255)      not null
#
# Indexes
#
#  index_posts_on_post_source_id  (post_source_id)
#
# Foreign Keys
#
#  fk_rails_89331e3a47  (post_source_id => post_sources.id)
#

class Post < ApplicationRecord
  belongs_to :post_source
end
