# app/models/scheduler.rb
class Scheduler
  def self.run_daily_tasks
    article = WebScraper.get_qiita_post_titles_links
    PathsController.slack_bot(article)
  end
end