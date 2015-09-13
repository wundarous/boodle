class Boodle < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def emojis
    comments.collect { |comment| comment.counts_by_emoji.values }.flatten
  end

  def to_s
    title
  end

end
