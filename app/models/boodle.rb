class Boodle < ActiveRecord::Base
  belongs_to :user

  attr_accessor :title

end
