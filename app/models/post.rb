class Post < ApplicationRecord
  require 'dotenv/load'
  require 'line_notify'

  def line_notification(post)
    @line_notify = LineNotify.new(ENV['LINE_TOKEN'])
    @line_options = {
      message: "
      \n\nTIME: \n#{post.created_at.strftime('%Y/%m/%d %H:%M')}
      \n\nTITLE:\n#{post.title}
      \n\nCONTENT:\n#{post.content}
      \n\nURL\n#{post.url}"
    }
    @line_notify.ping(@line_options)
  end

  validates :title, presence: true, length: { maximum: 200 }
  validates :content, presence: true, length: { maximum: 30_000 }

end
