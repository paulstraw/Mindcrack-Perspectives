class Episode < ActiveRecord::Base
  belongs_to :series
  attr_accessible :title, :perspective_attributes, :series
  has_many :perspectives

  accepts_nested_attributes_for :perspectives
end
