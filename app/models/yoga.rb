class Yoga < ActiveRecord::Base
  belongs_to :creator, :class_name => 'Viber'
  belongs_to :instructor, :class_name => 'Viber'
  has_many :ysvps
  attr_accessible :creator_id, :end_time, :flyer, :instructor_id, :note, :time, :title
  
  mount_uploader :flyer, FlyerUploader
end
