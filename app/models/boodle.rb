class Boodle < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  attr_accessor :title


end
