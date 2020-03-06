class Post < ApplicationRecord

  require 'dotenv/load'
  require 'line_notify'

  def line_notification(post)
    @line_notify = LineNotify.new(ENV['LINE_TOKEN'])
    @line_options = { message: "\n\nTITLE:\n#{post.title}\n\nCONTENT:\n#{post.content}\n" }
    @line_notify.ping(@line_options)
  end

  validates :title, presence: true, length: { maximum: 200 }
  validates :content, presence: true, length: { maximum: 30000 }


end
