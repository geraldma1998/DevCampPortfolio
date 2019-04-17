# == Schema Information
#
# Table name: portfolios
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  subtitle    :string
#  body        :text
#  main_image  :text
#  thumb_image :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :subtitle, :main_image, :thumb_image

	def self.search_by_subtitle subtitle
    where(subtitle: subtitle)
	end

	scope :search_ruby_on_rails_items, -> {where(subtitle: 'Ruby on rails')} 
end
