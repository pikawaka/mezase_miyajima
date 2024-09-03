rails cを開いて以下の手順でスラック通知をテストできます

 1.記事の取得
 
`article = WebScraper.get_qiita_post_titles_links`

 2.slackに通知
 
`PathsController.slack_bot(article)`

## 例
```
[5] pry(main)> article = WebScraper.get_qiita_post_titles_links
https://qiita.comhttps://qiita.com/kana_zzzz/items/db2c9acca5a84c7848c2
https://qiita.comhttps://qiita.com/kikuziro/items/1131f8cc98f3a6535be2
https://qiita.comhttps://qiita.com/Sicut_study/items/41e79f911f7881966e38
https://qiita.comhttps://qiita.com/prelude_op3-2/items/09a2748c86fcb6e69976
https://qiita.comhttps://qiita.com/namn1125/items/10a6b3b4aaf5754bc904
=> ["https://qiita.comhttps://qiita.com/kana_zzzz/items/db2c9acca5a84c7848c2",
 "https://qiita.comhttps://qiita.com/kikuziro/items/1131f8cc98f3a6535be2",
 "https://qiita.comhttps://qiita.com/Sicut_study/items/41e79f911f7881966e38",
 "https://qiita.comhttps://qiita.com/prelude_op3-2/items/09a2748c86fcb6e69976",
 "https://qiita.comhttps://qiita.com/namn1125/items/10a6b3b4aaf5754bc904"]
[6] pry(main)> PathsController.slack_bot(article)
=> [#<Net::HTTPOK 200 OK readbody=true>]
```
