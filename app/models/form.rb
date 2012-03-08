class Form < ActiveRecord::Base
  has_many :registers
  attr_accessible :user_email,:user_name,:to_email,:from_date,:to_date,:content
  validates :user_email,:user_name,:to_email,:from_date,:to_date,:content, :presence =>true
  validates :user_email, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
end

