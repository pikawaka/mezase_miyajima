class PathsController < ApplicationController
  def edit
  end

  def update
  end

  private

  def path_params
    params.require(:path).permit(:path)
  end
  
  
  def self.slack_bot(articles)
　
    notifier = Slack::Notifier.new ENV['WEBHOOK_URL'] do
      defaults channel: "#workshop",username: "通知BOT"
    end
    
    articles.unshift("【おはようございます。本日の新着記事です!】")
    articles.join("\n")
    
    notifier.ping articles each do |article|  # Slackに通知するメッセージ
                  end 
  end

  
end
