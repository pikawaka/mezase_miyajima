rails cを開いて以下の手順で実行できます
 1.記事の取得
`article = WebScraper.get_qiita_post_titles_links`
 2.slackに通知
`PathsController.slack_bot(article)`
