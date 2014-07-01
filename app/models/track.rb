class Track < ActiveRecord::Base
  attr_accessible :name, :gpx
  has_many :tracksegments, :dependent => :destroy
  has_many :points, :through => :tracksegments
end