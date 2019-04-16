# == Schema Information
#
# Table name: blogs
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ApplicationRecord
	enum status: {draft: 0, published: 1}
	extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  has_many :comments
  belongs_to :topic
end
