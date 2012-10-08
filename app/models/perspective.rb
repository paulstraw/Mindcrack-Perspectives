class Perspective < ActiveRecord::Base
  belongs_to :episode
  attr_accessible :start_offset, :user, :video_id, :episode
end
