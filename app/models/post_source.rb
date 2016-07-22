# == Schema Information
#
# Table name: post_sources
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  secret     :string(255)      not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_post_sources_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_9096896c3f  (user_id => users.id)
#

class PostSource < ApplicationRecord
  belongs_to :user
  has_many :posts

  before_create :generate_secret


  private

  def generate_secret
    self.secret = SecureRandom.base64(66)
  end
end
