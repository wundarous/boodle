class Boodle < ActiveRecord::Base
  belongs_to :user
  has_many :comments


  def to_s
    title
  end

end
