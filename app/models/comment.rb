class Comment < ActiveRecord::Base
  belongs_to :boodle


  def counts_by_emoji
    emojis = EmojiData.scan(message)
    result=Hash.new
    emojis.each do |emoji|
      result[emoji] ||= 0
      result[emoji] += 1
    end
    result
  end

  def to_s
    message
  end
end
