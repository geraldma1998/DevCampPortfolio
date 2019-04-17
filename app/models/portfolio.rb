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
#Portfolio.create!(title: "Web app",subtitle: "aawdawd",body: "aaa", technologies_attributes: [{name: "Ruby"},{name: "Rails"},{name: "Nodejs"}])
class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda {|attr| attr['name'].blank?}

  include Placeholder
  validates_presence_of :title, :body, :subtitle, :main_image, :thumb_image

  def self.search_by_subtitle subtitle
    where(subtitle: subtitle)
  end

  scope :search_ruby_on_rails_items, -> {where(subtitle: 'Ruby on rails')} 

  after_initialize :set_defaults
 
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
  end

end
