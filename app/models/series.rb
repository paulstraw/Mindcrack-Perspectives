class Series < ActiveRecord::Base
  attr_accessible :title
  has_many :episodes
end
