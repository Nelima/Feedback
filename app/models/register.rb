class Register < ActiveRecord::Base
  belongs_to :form
  attr_accessible :firstname,:lastname,:email,:password
  validates :firstname,:lastname,:email,:password, :presence =>true
  validates :email, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates :email, :uniqueness => true
end

