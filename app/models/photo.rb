class Photo < ActiveRecord::Base
  has_many :slides
  validates_length_of :name, :within => 6..100
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_presence_of :filename
  named_scope :with_filetype_jpg, :conditions => "filename like '%.jpg'"
  named_scope :with_thumbnail, :conditions => "thumbnail not null and thumnail != ''"
  named_scope :with_filetype, lambda {|ftype| {:condition => ["filename like ?", "%.#{ftype}"]}}
end
