class Track < ActiveRecord::Base
  has_many :tracksegments, :dependent => :destroy
  has_many :points, :through => :tracksegments
  has_attached_file :gpx
  accepts_nested_attributes_for :tracksegments
end