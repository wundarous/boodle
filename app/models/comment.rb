class Comment < ActiveRecord::Base
  belongs_to :boodle

  attr_accessor :text
end
