class WebScraper
  
# キータの投稿者名のスクレイピングメソッド
  def self.get_qiita_post_contributors
    agent = Mechanize.new
    page = agent.get('https://qiita.com')
    contributor_texts = []
    page.search(".style-1w7apwp .style-12s080b").each_with_index do |contributor|
      contributor_texts << contributor.inner_text
    end
      puts contributor_texts
  end

  # キータの投稿タイトルを5つスクレイピングするメソッド
  def self.get_qiita_post_titles
    agent = Mechanize.new
    page = agent.get('https://qiita.com')
    post_titles_texts = []
    page.search(".style-1w7apwp .style-1ws5e6r").each_with_index do |post_title_text|
      post_titles_texts << post_title_text.inner_text
    end
    puts post_titles_texts.slice(0..4)
     
  end

  #  キータの投稿の上位５個のリンクを取得するメソッド
  def self.get_qiita_post_titles_links
    url = 'https://qiita.com'
    agent = Mechanize.new
    page = agent.get(url)

    post_title_links = []
    page.search('.style-2vm86z', 'a').each do |element|
      post_title_link = element.get_attribute('href')
      post_title_links << url + post_title_link if post_title_link.present?
    end
    
    post_title_links[0..4].each do |link|
      puts link
    end 
  end

# キータlinksメソッドでページ内全てのリンクを配列として取得する

 def self.get_qiita_post_titles_links_method
  url = 'https://qiita.com'
  agent = Mechanize.new
  page = agent.get(url)

  links = page.links
  links_href = links.map(&:href)
  puts links_href
 end

end