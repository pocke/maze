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
end
