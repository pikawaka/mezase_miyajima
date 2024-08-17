class WebScraper
  def self.get_title(url)
    agent = Mechanize.new
    page = agent.get(url)
    page.title
  end

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

  # キータの投稿タイトルをスクレイピングするメソッド
  def self.get_qiita_post_titles
    agent = Mechanize.new
    page = agent.get('https://qiita.com')
    post_titles_texts = []
    page.search(".style-1w7apwp .style-1ws5e6r").each_with_index do |post_title_text|
      post_titles_texts << post_title_text.inner_text
    end
    puts post_titles_texts.slice(0..4)
      # puts post_titles_texts
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
    # puts post_title_links.slice(0..4)
      # puts post_title_links

    # post_title_links_5 = post_title_links[0..4]
    post_title_links[0..4].each_with_index do |link, i|
      puts " #{i+1}: #{link}"
    end 
  end
# end

# キータlinksメソッドでページ内全てのリンクを配列として取得する

 def self.get_qiita_post_titles_links_method
  url = 'https://qiita.com'
  agent = Mechanize.new
  page = agent.get(url)

  links = page.links
  links_href = links.map(&:href)
  puts links_href
end


 #  キータの投稿の属性値とリンクを取得するメソッド
 def self.get_qiita_post_title_link_and_text
  url = 'https://qiita.com'
  agent = Mechanize.new
  page = agent.get(url)
  
  links = page.links
  links_href = links.map(&:href)
  end
end