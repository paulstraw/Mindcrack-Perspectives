class Episode < ActiveRecord::Base
  belongs_to :series
  attr_accessible :title, :perspectives_attributes, :series_id
  has_many :perspectives

  accepts_nested_attributes_for :perspectives
end
