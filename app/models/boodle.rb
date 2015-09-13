class Boodle < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def emojis
    result = []
    comments.each do |comment|
      result.concat(comment.counts_by_emoji.keys)
    end
    result.join('')
  end

  def to_s
    title
  end

end
